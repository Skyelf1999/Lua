---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/5/7 19:38
---


------------------------------- 简单示例 -------------------------------

a = {}
key = {}
a[key] = 1
key = {}
a[key] = 2
key = nil           -- 手动回收key
collectgarbage()    -- 强制垃圾收集
for k,v in pairs(a) do
    print(v)
end

print("改为弱引用后：\n")
b = {__mode="k"}
setmetatable(a,b)
collectgarbage()    -- 强制垃圾收集
for k,v in pairs(a) do
    print(v)
end