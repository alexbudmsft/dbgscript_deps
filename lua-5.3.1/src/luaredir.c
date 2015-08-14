#define LUA_CORE

#include "lua.h"
#include "luaredir.h"

lua_StdioRedir g_StdioCallbacks;

#undef fprintf
#undef fwrite

int lua_fprintf(FILE* const stream, const char* const fmt, ...)
{
	int ret = 0;
	
	va_list args;

	va_start(args, fmt);

    /* Don't redirect for stdout/err streams, or if no callback registered. */
	if (stream == stdout || stream == stderr || !g_StdioCallbacks.cb_vfprintf)
	{
		ret = vfprintf(stream, fmt, args);
		goto exit;
	}

    /* Otherwise, call the callback */
	ret = g_StdioCallbacks.cb_vfprintf(stream, fmt, args);
    
exit:
    
	va_end(args);

	return ret;
}

size_t lua_fwrite(const void* buf, size_t size, size_t count, FILE* stream)
{
    size_t ret = 0;
    
    /* Don't redirect for stdout/err streams, or if no callback registered. */
    if (stream == stdout || stream == stderr || !g_StdioCallbacks.cb_vfprintf)
    {
        ret = fwrite(buf, size, count, stream);
        goto exit;
    }

    /* Otherwise, call the callback */
    ret = g_StdioCallbacks.cb_fwrite(buf, size, count, stream);
    
exit:
        
   return ret; 
}

void lua_set_stdio_callbacks(const lua_StdioRedir* callbacks)
{
    g_StdioCallbacks = *callbacks;
}

