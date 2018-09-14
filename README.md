# lua profile lib

profile c and lua fucntion expect coroutine yield.

~~~.lua
local profile = require "profile"

profile.start()

-- your code 

profile.dstop(32) -- dump top 32 call info
-- output example
--[[ 

------- dump profile -------
[1] userdata: 0x7fc7e0c09990 name:loop file:[L]@test.lua:48 count:3 total:0.272042s ave:0.090681s percent:55.05%
[2] userdata: 0x7fc7e0c09970 name:call_func file:[L]@test.lua:37 count:3000000 total:0.222086s ave:0.000000s percent:44.95%
[3] userdata: 0x7fc7e0c099e0 name:foo2 file:[L]@test.lua:62 count:1 total:0.000000s ave:0.000000s percent:0%
[4] userdata: 0x7fc7e0c09a30 name:foo file:[L]@test.lua:68 count:1 total:0.000000s ave:0.000000s percent:0%

]]

~~~