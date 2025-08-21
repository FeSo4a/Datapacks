execute as @a at @s if block ~ ~ ~ minecraft:purple_carpet run scoreboard players set @s on_purple 1
effect give @a[scores={on_purple=1}] minecraft:health_boost 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:purple_carpet run scoreboard players set @s on_purple 0