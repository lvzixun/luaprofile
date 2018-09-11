# lua profile lib

profile c and lua fucntion expect tail call and coroutine yield.

~~~.lua
local profile = require "profile"

profile.start()

-- your code 

profile.dstop(32) -- dump top 32 call info
~~~