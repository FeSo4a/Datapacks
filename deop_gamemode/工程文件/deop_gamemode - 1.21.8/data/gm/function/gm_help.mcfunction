scoreboard objectives add gm_help trigger
scoreboard players enable @a gm_help

tellraw @a[scores={gm_help=1}] {"text":"欢迎使用非op调整游戏模式！","color":"green"}
tellraw @a[scores={gm_help=1}] {"text":"作者：FeSo4a","color":"light_purple"}

tellraw @a[scores={gm_help=1}] {"text":"以下是该数据包添加的命令："}
tellraw @a[scores={gm_help=1}] {"text":"/trigger gm_help -> 打开此菜单"}
tellraw @a[scores={gm_help=1}] {"text":"/trigger gm set -> 调整游戏模式，set后面加0创造/1生存/2冒险/3旁观"}

scoreboard players set @a[scores={gm_help=1}] gm_help 0