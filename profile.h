#ifndef _PROFILE_H_
#define _PROFILE_H_

#include <stdlib.h>
#include <lua.h>

#define prealloc  realloc
#define pmalloc   malloc
#define pfree  free
#define pcalloc calloc

int luaopen_profile_c(lua_State* L);

#endif