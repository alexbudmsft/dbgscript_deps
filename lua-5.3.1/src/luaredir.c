#define LUA_CORE

#include "lua.h"
#include "luaredir.h"

lua_StdioRedir g_StdioCallbacks;

#undef fprintf
#undef fwrite
#undef fread
#undef fgets
#undef getc

int lua_fprintf(FILE* const stream, const char* const fmt, ...)
{
	int ret = 0;
	
	va_list args;

	va_start(args, fmt);

    /* Don't redirect for stdout/err streams, or if no callback registered. */
	if (!g_StdioCallbacks.cb_output || (stream != stdout && stream != stderr))
	{
		ret = vfprintf(stream, fmt, args);
		goto exit;
	}

    {
        char buf[1024] = {0};
        
        vsprintf(buf, fmt, args);
        
        /* Otherwise, call the callback */
    	g_StdioCallbacks.cb_output(
    	    stream == stdout ?
    	    lua_outputNormal : lua_outputError,
    	    buf);
    }
    
exit:
    
	va_end(args);

	return ret;
}

size_t lua_fwrite(const void* buf, size_t size, size_t count, FILE* stream)
{
    size_t ret = 0;
    
    /* Don't redirect for stdout/err streams, or if no callback registered. */
	if (!g_StdioCallbacks.cb_output || (stream != stdout && stream != stderr))
    {
        ret = fwrite(buf, size, count, stream);
        goto exit;
    }

    /* Otherwise, call the callback */
	g_StdioCallbacks.cb_output(
	    stream == stdout ?
	    lua_outputNormal : lua_outputError,
	    buf);
    
exit:
        
   return ret; 
}

size_t lua_fread(void* buf, size_t size, size_t count, FILE* stream)
{
    size_t ret = 0;
    
    /* Don't redirect for stdout/err streams, or if no callback registered. */
	if (!g_StdioCallbacks.cb_input || stream != stdin)
	{
		ret = fread(buf, size, count, stream);
		goto exit;
	}

    assert(size == 1);
    
    g_StdioCallbacks.cb_input(buf, count);
exit:
    return ret;
}

char* lua_fgets(char* str, int num, FILE* stream)
{
    char* ret = NULL;
    
    /* Don't redirect for stdout/err streams, or if no callback registered. */
    if (!g_StdioCallbacks.cb_input || stream != stdin)
    {
        ret = fgets(str, num, stream);
        goto exit;
    }

    g_StdioCallbacks.cb_input(str, num);

    ret = str;
    
exit:
    return ret;
}

int lua_getc(FILE* stream)
{
    int ret = 0;
    
    /* Don't redirect for stdout/err streams, or if no callback registered. */
    if (!g_StdioCallbacks.cb_getc || stream != stdin)
    {
        ret = getc(stream);
        goto exit;
    }

    ret = g_StdioCallbacks.cb_getc();
    
exit:
    return ret;
}

void lua_set_stdio_callbacks(const lua_StdioRedir* callbacks)
{
    g_StdioCallbacks = *callbacks;
}

