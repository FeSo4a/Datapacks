# colorful_carpet使用教程


## 安装
1. 选择安装版本
2. 找到要安装的 _Minecraft存档文件夹_
3. 打开存档文件夹，将对应版本的zip文件拖入存档中的 _datapack_ 文件夹中
4. 进入存档，输入/reload  

---

**注意**：
* 存档文件夹一般在 _minecraft版本文件夹_ 中的 _saves_ 文件夹中，打开方式：

    * 官方启动器：
        1. 选择 _Minecraft:Java Edition_
        2. 点击上方**配置**
        3. 下滑找到对应版本
        4. 点击**文件夹图标**

    * PCL2启动器：
        1. 点击左下方**版本选择**
        2. 找到对应版本
        3. 点击**齿轮图标**
        4. 点击“版本文件夹”

    * 网易版我的世界：
        1. 选择对应存档
        2. 选择**导出**地图文件
        3. 找到地图文件里的 _datapack_ 文件夹
        4. **新建地图**，导入更改过的地图文件夹

> *(别的启动器我也没用过)*


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


## 代码原理

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