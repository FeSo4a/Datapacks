# deop_gamemode使用教程


## 用法
按照仓库总介绍的 ___READMD.md___ 文件安装完毕后**立即生效**  
游戏内新增命令：  
```mcfunction
trigger gm set 0
```
调整游戏模式，具体内容会在**下面**看到
~~~mcfunction
trigger gm_help
~~~
打开非op功能菜单
```mcfunction
function gm:setbossbar
```
打开bossbar提醒成员使用
*（其实就是我不会做玩家进入检测qaq）*
~~~mcfunction
function gm:delbossbar
~~~
关闭bossbar  


## 功能
让没有权限的玩家也能**调整自己游戏模式**  
游戏模式对照表：（/trigger gm set ***n***）
|n|模式|
|-|-|
|0|创造|
|1|生存|
|2|冒险|
|3|旁观|


## 实现原理
_/trigger命令_ 可以让**没有权限**的玩家使用

```mcfunction
scoreboard objectives add gm trigger
scoreboard players enable @a gm
```
使得**所有玩家**可更改**自己**的 *gm计分板值*

```mcfunction
gamemode creative @a[scores={gm=0}]
gamemode survival @a[scores={gm=1}]
gamemode adventure @a[scores={gm=2}]
gamemode spectator @a[scores={gm=3}]
```
把计分板为对应值的玩家调成对应模式

```mcfuncion
scoreboard players set @a[scores={gm=0}] gm -1
scoreboard players set @a[scores={gm=1}] gm -1
scoreboard players set @a[scores={gm=2}] gm -1
scoreboard players set @a[scores={gm=3}] gm -1
```
*（可选）把所有玩家的计分板调成一个无关紧要的值*


## 补充

**目前版本**：_Minecraft:Java Edition 1.20.1+_ 都有  

**兼容性**： 与原版 *gamemode* 指令**不冲突**  

**小漏洞**：玩家进入时自动设为创造模式  

**卸载**： 将存档文件夹中 _datapack_ 文件夹中找到该文件，删除后在游戏中输入/reload  

**作者B站**: [@FeSo4a](https://space.bilibili.com/3546674548967510)