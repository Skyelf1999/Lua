---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 14563.
--- DateTime: 2022/4/30 10:26
--- 复数模块
---


------------------------------- 模块设置 -------------------------------

local modname = ...				-- 避免写模块名，require会将模块名作为参数传入
local M = {}
complex = M
_G[modname] = M
package.loaded[modname] = M     -- 直接将模块table赋予package.loaded，不必再return
------------------------------- 模块设置 -------------------------------


------------------------------- 其他模块导入 -------------------------------
local sqrt = math.sqrt
local io = io
------------------------------- 其他模块导入 -------------------------------


M.i = {r=0, i=1}

-- 复数构造
function M.new(r,i)
    local new_c = {r=r, i=i}
    local mt = {__tostring = function(c)
        return r.. ",  " ..i.." *i"
    end
    }
    setmetatable(new_c,mt)
    return new_c
end

-- 复数相加
function M.add(c1,c2)
    return M.new(c1.r+c2.r, c1.i+c2.i)
end

return complex