# colorful_carpet使用教程


## 用法
按照仓库总介绍的 ___READMD.md___ 文件安装完毕后**立即生效**  
游戏内新增命令：  
```mcfunction
function cful_carpet:gray
```
执行判断玩家站在灰色地毯上的函数  
*同理可以将**gray**替换为其他地毯颜色*


## 功能

当玩家站在不同地毯上时，获得**状态效果**  

状态效果表：

|地毯种类|药水效果|药水等级|
|-|-|-|
|白色地毯|隐身|1|
|橙色地毯|抗火|1|
|品红色地毯|幸运|1|
|淡蓝色地毯|力量|1|
|黄色地毯|伤害吸收|5|
|黄绿色地毯|发光|1|
|粉红色地毯|急迫|1|
|灰色地毯|抗性提升|1|
|淡灰色地毯|夜视|1|
|青色地毯|霉运|1|
|紫色地毯|生命提升|1|
|蓝色地毯|挖掘疲劳|1|
|棕色地毯|缓慢|2|
|绿色地毯|速度|1|
|红色地毯|生命恢复|1|
|黑色地毯|失明|1|


## 实现原理

检测语句：

```mcfunction
# 给所有站在地毯上的人分数设为1
execute as @a at @s if block ~ ~ ~ minecraft:black_carpet run scoreboard players set @s on_black 1
```

```mcfunction
# 给所有没站在地毯上的人分数设为0
execute as @a at @s unless block ~ ~ ~ minecraft:black_carpet run scoreboard players set @s on_black 0
```

施加状态效果：
~~~mcfunction
# 给所有分数为1的人状态效果
effect give @a[scores={on_black=1}] minecraft:blindness 1 0 true
~~~


## 补充

**目前版本**：_Minecraft:Java Edition 1.20.1+_ 都有  

**卸载**： 将存档文件夹中 _datapack_ 文件夹中找到该文件，删除后在游戏中输入/reload  

**作者B站**: [@FeSo4a](https://space.bilibili.com/3546674548967510)
