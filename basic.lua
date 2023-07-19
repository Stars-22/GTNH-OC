————————————————操作系统————————————————
rm ->--删除文件
rmdir ->--删除文件夹
mkdir ->--创建文件夹
edit ->--编辑文件
cd .. ->--返回上一层目录
cd aa ->--打开aa目录
cd /C:/home ->--打开C:/home目录
cd ../lib ->--打开上一层目录中的lib目录
df ->--显示所有当前文件系统和挂载点
ls ->--显示当前目录的文件列表
label -a ->--更改文件驱动器名称
mount HDD C: ->--将名为HDD的文件驱动器挂载为当前目录中名为C:的文件夹


————————————————Lua————————————————
local a = 1 ->--定义局部变量
b = 2 ->--定义全局变量
nil ->--空

if ["条件"] then
    ......
elseif ["条件"] then
    ......
end ->--if条件语句

for i=m,n do
    ......
end ->for循环（自动+1）（循环n-m+1次）
while ["条件"] do
    ......
	break
end ->--while循环

table = {HP=100,LP=50} ->--定义表
for k,v in pairs (table) do
    print(k..":"..v)
end ->--for遍历名为table表（print中..是字符串的嫁接）
for i=1,#a do
    print(i..":"..a[i])
end ->--for遍历名为a表（print中..是字符串的嫁接）(a[i]表的使用,#a获得表的大小)

--注释-- ->注释
--[[
...
...
]]-- ->多行注释

d = string.format("%.2f",c) ->--将c保留2位小数赋给d
os.sleep(seconds) ->--暂停秒数
tostring(b) ->--将b转化为字符串
table.insert(tab_table,value) ->--在tab_table表中添加一个元素
number boolean table string nil ->--变量类型 
function module thread ->--
end

require("test1") ->--加载名为test1的文件
function a(a1,a2)
    return a1+a2
end ->--function函数用法



component.proxy("") ->--地址代理
其他文件调用——Opencomputer 初篇：component ,API , 核电分控  与 进阶篇：凋零行刑官 3（1小时）
https://www.bilibili.com/video/BV1Xq4y1S7ZX/?share_source=copy_web&vd_source=c70f5d6a96efeefd28f2b6d41739c86d





for _,v in pairs (component.list()) do print(v) end ->--获取组件列表1
for k,v in pairs (component.list()) do print(k.."  "..v) os.sleep(2) end ->--获取组件列表2
for k,v in pairs (component.[]) do print(k,v) end ->--获取组件api
for k,v in pairs (component.gt_machine) do if string.find(k,"get") then print(k,v) os.sleep(2) end end ->--搜索组件api