# lua profile lib

~~~.lua
local profile = require "profile"

profile.start()

-- your code 

profile.dstop(32) -- dump top 32 call info
~~~