---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/4/22 10:47
---


names = {"dsh","htm","cwf"}
age = {dsh=23, htm=21, cwf=22}
table.sort(names, function(n1,n2) return age[n1]<age[n2]  end)
for i,v in ipairs(names) do
    print(v)
end

function create_count()
    local i=0
    return function()
        i = i+1
        return i
    end
end

x = create_count()      --x、y各创建了一个closure
y = create_count()
print(x())
print(x())
print(y())
print(y() .. "\n")

--Lib = { add = function (x,y) return x+y end}
--Lib.sub = function (x,y) return x-y end
--function Lib.multi(x,y) return x*y end
--print(Lib.add(1,10),Lib.sub(5,1),Lib.multi(3,3))

local function fib(n)
    if n<3 then return 1
        else return fib(n-1)+fib(n-2)
    end
end

print(fib(3),fib(4),fib(5))




