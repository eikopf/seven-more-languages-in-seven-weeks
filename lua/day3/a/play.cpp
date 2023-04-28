extern "C" { // makes the lua runtime available to the C++ program as C
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
}


int main(int argc, const char* argv[]) {
	lua_State* L = luaL_newstate(); // constructs a new lua interpreter
	luaL_openlibs(L); // imports std library to lua interpreter

	luaL_dostring(L, "print('hello, world!')"); // sends code to be executed by interpreter

	lua_close(L); // kills the interpreter
	return 0;
}

