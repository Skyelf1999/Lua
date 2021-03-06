---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2022/4/26 10:21
---

-- 节点结构，存储图的table由一个个节点构成，结构类似于邻接表
node = {name = nil, adj = {}}

graph = {}

-- 在图中搜索目标节点
-- 输入：目标节点的名称
local function find_node(graph, name)
    if not graph[name] then
        graph[name] = {name = name, adj = {}}
    end
    return graph[name]
end


-- 构造图
function create_graph()
    local graph = {}
    for line in io.lines() do
        local namefrom,nameto = string.match(line,"(%S+)%s+(%S+)")
        -- 获取一条边的两个端点，若没有则先加入图中
        local from = find_node(graph,namefrom)
        local to = find_node(graph,nameto)
        from.adj[to] = true     -- 令起点边集中k=终点的v=true
    end
    return graph
end


-- 路径添加
function add_path(graph,from_name,to_name)
    local cur_node = graph[from_name]
    graph[from_name].adj[#cur_node.adj+1] = to_name
end


-- 路径查找
-- cur：当前节点名称；to：目标节点名称；path：路径；visited：已访问的节点
function find_path(cur,to,path,visited)
    path = path or {}
    visited = visited or {}
    if visited[cur] then return nil end
    visited[cur]=true
    path[#path+1] = cur
    if cur==to then return path end                 -- 找到了
    for i,node in pairs(graph[cur].adj) do
        local p = find_path(node,to,path,visited)   -- 深度优先
        if p then return p end                      -- 找到了
    end
    path[#path]=nil
end


-- 输出路径
function print_path(path)
    for i=1,#path do
        print(path[i].name)
    end
end


-- 输出图存储表
function print_graph(graph)
    for i,node in pairs(graph) do
        print(node.name)
        if node.adj then do
            for j,v in pairs(node.adj) do
                print("\t--> " .. v)
            end
        end
        end
        print("--------------------------")
    end
end


------------------------------- 操作测试 -------------------------------
find_node(graph,"v1")
find_node(graph,"v2")
find_node(graph,"v3")
find_node(graph,"v4")
find_node(graph,"v5")
--for i,node in pairs(graph) do
--    print(node.name)
--end
add_path(graph,"v1","v2")
add_path(graph,"v1","v3")
add_path(graph,"v2","v3")
add_path(graph,"v3","v4")
add_path(graph,"v5","v4")
print_graph(graph)

path = find_path("v1","v5")

print("\n\n")
for i,v in pairs(path) do
    print(v)
end











