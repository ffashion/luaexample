#! /usr/bin/lua
local suc, exitcode ,code = os.execute("ssh")

print(suc,exitcode,code)
