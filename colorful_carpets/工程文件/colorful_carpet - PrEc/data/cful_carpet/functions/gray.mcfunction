execute as @a at @s if block ~ ~-1 ~ minecraft:gray_carpet run scoreboard players set @s on_gray 1
effect give @a[scores={on_gray=1}] minecraft:levitation 1 24 true

execute as @a at @s unless block ~ ~-1 ~ minecraft:gray_carpet run scoreboard players set @s on_gray 0