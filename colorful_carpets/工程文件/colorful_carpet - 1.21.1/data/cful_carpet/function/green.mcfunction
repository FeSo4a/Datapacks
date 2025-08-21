execute as @a at @s if block ~ ~ ~ minecraft:green_carpet run scoreboard players set @s on_green 1
effect give @a[scores={on_green=1}] minecraft:speed 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:green_carpet run scoreboard players set @s on_green 0