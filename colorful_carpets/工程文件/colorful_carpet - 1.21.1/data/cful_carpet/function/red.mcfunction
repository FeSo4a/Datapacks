execute as @a at @s if block ~ ~ ~ minecraft:red_carpet run scoreboard players set @s on_red 1
effect give @a[scores={on_red=1}] minecraft:regeneration 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:red_carpet run scoreboard players set @s on_red 0