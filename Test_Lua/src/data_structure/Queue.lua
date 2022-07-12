---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/4/25 16:49
---

-- 队列操作器
Queue = {}

-- 队列创建，返回新的队列
function Queue.new()
    return {first=0, last=-1}
end

-- 入头
function Queue.pushF(list,value)
    local first = list.first - 1
    list.first = first
    list[first] = value
end

-- 入尾
function Queue.pushL(list,value)
    local last = list.last + 1
    list.last = last
    list[last] = value
end

-- 出头
function Queue.popF(list)
    local first = list_head.first
    if first>list.last then error("队列为空") end
    local value = list[first]
    list[first] = nil
    list.first = first + 1
    return value
end

-- 出尾
function Queue.popL(list)
    local last = list_head.last
    if first>list.last then error("队列为空") end
    local value = list[last]
    list[last] = nil
    list.last = last - 1
    return value
end














