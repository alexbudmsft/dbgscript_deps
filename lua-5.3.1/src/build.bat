set VER=5.3.1
cl /MD /O2 /W3 /Zi /c /DLUA_BUILD_AS_DLL *.c
del *.o
ren lua.obj lua.o
ren luac.obj luac.o
link /DLL /IMPLIB:lua%VER%.lib /OUT:lua%VER%.dll *.obj
link /OUT:lua.exe lua.o lua%VER%.lib
lib /out:lua%VER%-static.lib *.obj
link /OUT:luac.exe luac.o lua%VER%-static.lib