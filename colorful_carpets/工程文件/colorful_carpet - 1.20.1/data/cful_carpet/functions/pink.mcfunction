execute as @a at @s if block ~ ~ ~ minecraft:pink_carpet run scoreboard players set @s on_pink 1
effect give @a[scores={on_pink=1}] minecraft:haste 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:pink_carpet run scoreboard players set @s on_pink 0