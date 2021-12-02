#include <stdio.h>
#include <lua5.3/lua.h>
#include <lua5.3/lualib.h>
#include <lua5.3/lauxlib.h>

int add(lua_State *L){
    lua_Number one ,two;
    //找到lua 入栈的参数
    one = luaL_checknumber(L,1);
    two = luaL_checknumber(L,2);
    
    //返回值入 lua栈
    lua_pushnumber(L,one+two);
    //指定lua 的返回值数量 也就是你调用了多少次 lua_pushnumber
    return 1;
}


// int add(int x,int y){
//     return x + y;
// }

int luaopen_mylib(lua_State* L){
    
    // luaL_register()
}