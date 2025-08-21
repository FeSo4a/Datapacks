execute as @a at @s if block ~ ~ ~ minecraft:white_carpet run scoreboard players set @s on_white 1
effect give @a[scores={on_white=1}] minecraft:slowness 1 1 true

execute as @a at @s unless block ~ ~ ~ minecraft:white_carpet run scoreboard players set @s on_white 0