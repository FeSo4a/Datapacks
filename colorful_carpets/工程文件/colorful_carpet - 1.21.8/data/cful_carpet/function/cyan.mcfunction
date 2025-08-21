execute as @a at @s if block ~ ~ ~ minecraft:cyan_carpet run scoreboard players set @s on_cyan 1
effect give @a[scores={on_cyan=1}] minecraft:unluck 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:cyan_carpet run scoreboard players set @s on_cyan 0