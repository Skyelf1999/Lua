---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/5/9 19:59
---

local result = {}
setmetatable(result,{__mode = "kv"})
function mem_loadstring(s)
    local res = result[s]
    -- 如果该语句未被编译过，则进行编译并存储结果
    if res==nil then
        res = assert(loadstring(s))
        result[s] = res
    end
    return res
end