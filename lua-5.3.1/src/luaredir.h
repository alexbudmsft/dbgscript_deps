/*
** Hooks to redirect Lua's output to standard streams.
*/
#pragma once

#ifdef LUA_REDIRECT

#include <stdarg.h>
#include <stdio.h>

typedef int (*LUA_VFPRINTF) (FILE* const stream, const char* const fmt, va_list arg);
typedef size_t (*LUA_FWRITE) (const void* buf, size_t size, size_t count, FILE* stream);

#if 0
typedef int (*LUA_FPUTS) (const char* msg, FILE* stream);
typedef char* (*LUA_FGETS) (char* msg, int maxToRead, FILE* stream);
typedef size_t (*LUA_FREAD) (void* buf, size_t, size_t, FILE* stream);
#endif

typedef struct lua_StdioRedir
{
	LUA_VFPRINTF cb_vfprintf;
	LUA_FWRITE cb_fwrite;
	
} lua_StdioRedir;

/* Redefine stdio APIs that Lua calls */
#define fprintf	lua_fprintf
#define fwrite	lua_fwrite

#if 0
#define fputs	lua_fputs
#define fgets	lua_fgets
#define fread	lua_fread
#endif

LUA_API int lua_fprintf(FILE* const stream, const char* const fmt, ...);
LUA_API size_t lua_fwrite(const void* buf, size_t size, size_t count, FILE* stream);

LUA_API void lua_set_stdio_callbacks(const lua_StdioRedir* callbacks);

#endif
