# 如何使用Server数据包

## 指令
允许玩家输入以下指令：
```mcfunction
trigger server_help
trigger server_eat
trigger server_rua
```
输入 `/trigger server_help` 可以查看其他指令作用。

## 功能
*服务器娘* 会与玩家互动，
每10分钟会清理掉落物，
且会在玩家进入时播报消息。  
> *她还会让你摸摸哦！喵~*

## 实现原理
```mcfunction
# 新增积分项
scoreboard objectives add server_login dummy

# 设置所有玩家分数 None + 0 -> 0, 1 + 0 -> 1
scoreboard players add @a server_login 0

# 向所有分数为0的玩家播报消息
tellraw @a[scores={server_login=0}] ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"欢迎加入喵！","color":"yellow"}]
tellraw @a[scores={server_login=0}] ["[",{"text":"服务器娘","color":"light_purple"},"] ",{"text":"输入/trigger server_help查看帮助喵！","color":"aqua"}]

# 重置所有分数
scoreboard players reset * server_login

# None + 1 -> 1, 只会检测在线玩家
scoreboard players add @a server_login 1
```

## 其他
作者b站：[@FeSo4a](https://space.bilibili.com/3546674548967510 "点击前往")