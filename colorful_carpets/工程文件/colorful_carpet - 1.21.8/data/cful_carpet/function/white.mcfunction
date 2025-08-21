execute as @a at @s if block ~ ~ ~ minecraft:white_carpet run scoreboard players set @s on_white 1
effect give @a[scores={on_white=1}] minecraft:invisibility 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:white_carpet run scoreboard players set @s on_white 0