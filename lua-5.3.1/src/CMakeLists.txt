project (lua)
cmake_minimum_required (VERSION 3.3)

add_definitions(-DLUA_BUILD_AS_DLL)

set (LUA_VER 5.3.1)
set (LIB_SOURCES 
	lapi.c
	lauxlib.c
	lbaselib.c
	lbitlib.c
	lcode.c
	lcorolib.c
	lctype.c
	ldblib.c
	ldebug.c
	ldo.c
	ldump.c
	lfunc.c
	lgc.c
	linit.c
	liolib.c
	llex.c
	lmathlib.c
	lmem.c
	loadlib.c
	lobject.c
	lopcodes.c
	loslib.c
	lparser.c
	lstate.c
	lstring.c
	lstrlib.c
	ltable.c
	ltablib.c
	ltm.c
	lundump.c
	lutf8lib.c
	lvm.c
	lzio.c
)

# Lua DLL.
#
add_library(lua-${LUA_VER} SHARED ${LIB_SOURCES})

# Static lib.
#
add_library(lua-${LUA_VER}-static STATIC ${LIB_SOURCES})

# Lua interactive interpreter.
#
add_executable(lua lua.c)

target_link_libraries (lua lua-${LUA_VER})

# Lua compiler
#
add_executable(luac luac.c)

target_link_libraries (luac lua-${LUA_VER}-static)
