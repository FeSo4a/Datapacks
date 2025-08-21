execute as @a at @s if block ~ ~ ~ minecraft:gray_carpet run scoreboard players set @s on_gray 1
effect give @a[scores={on_gray=1}] minecraft:resistance 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:gray_carpet run scoreboard players set @s on_gray 0