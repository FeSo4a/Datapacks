execute as @a at @s if block ~ ~ ~ minecraft:blue_carpet run scoreboard players set @s on_blue 1
effect give @a[scores={on_blue=1}] minecraft:mining_fatigue 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:blue_carpet run scoreboard players set @s on_blue 0