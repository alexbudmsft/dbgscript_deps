/*
** Hooks to redirect Lua's output to standard streams.
*/
#pragma once

#ifdef LUA_REDIRECT

#include <stdarg.h>
#include <stdio.h>
#include <assert.h>

typedef enum lua_OutputType
{
	lua_outputNormal,
	lua_outputError,
	
} lua_OutputType;

typedef void (*LUA_OUTPUTCB) (lua_OutputType out_type, const char* buf);
typedef void (*LUA_INPUTCB) (char* buf, size_t len);

#if 0
typedef int (*LUA_FPUTS) (const char* msg, FILE* stream);
typedef char* (*LUA_FGETS) (char* msg, int maxToRead, FILE* stream);
typedef size_t (*LUA_FREAD) (void* buf, size_t, size_t, FILE* stream);
#endif

typedef struct lua_StdioRedir
{
	LUA_OUTPUTCB cb_output;
	LUA_INPUTCB cb_input;
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
