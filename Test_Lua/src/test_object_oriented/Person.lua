---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/7/15 16:20
---

require("structure")

local Person = {name="无名",ismale=true,age=-1}
Person.__index = Person

-- 对象构造方法
function Person.new(info)
    local object = {}
    setmetatable(object,Person)
    -- 属性赋值
    for k,v in pairs(info) do
        object[k]=v
    end
    print("构造完成\n")
    return object
end

function Person:get(k)
    return self[k]
end
function Person:set(k,v)
    self[k] = v
end
function Person:print(k)
    print(self[k])
end

return Person