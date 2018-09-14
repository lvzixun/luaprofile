local c = require "profile.c"

local M = {
    start = c.start,
    stop = c.stop,
    pause = c.pause,
    resume = c.resume,
}

function M.dump(records)
    local ret = {"------- dump profile -------"}
    for i,v in ipairs(records) do
        local s = string.format("[%d] %s name:%s file:[%s]%s:%d count:%d total:%fs ave:%fs percent:%.4g%%",
            i, v.point, v.name, v.flag, v.source, v.line, v.count, v.all_cost, v.ave_cost, v.percent*100)
        ret[#ret+1] = s
    end
    return table.concat(ret, "\n")
end


function M.dstop(count)
    local records = c.stop(count)
    local s = M.dump(records)
    print(s)
end


return M