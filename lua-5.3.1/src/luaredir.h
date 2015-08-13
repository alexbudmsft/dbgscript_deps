/*
** Hooks to redirect Lua's output to standart streams
*/

#ifdef LUA_REDIRECT

#include <stdarg.h>
#include <stdio.h>

int (*lua_fprintf)(FILE* stream, const char* msg, ...);
int (*lua_fputs)(const char* msg, FILE* stream);
int (*lua_fwrite)(const void* ptr, size_t size, size_t count, FILE* stream);
int (*lua_printf)(const char* msg, ...);

#define fprintf(...) lua_fprintf(__VA_ARGS__)
#define fputs        lua_fputs
#define fwrite       lua_fwrite
#define printf(...)  lua_printf(__VA_ARGS__)

#endif
