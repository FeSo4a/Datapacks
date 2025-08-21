execute as @a at @s if block ~ ~ ~ minecraft:light_blue_carpet run scoreboard players set @s on_light_blue 1
effect give @a[scores={on_light_blue=1}] minecraft:strength 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:light_blue_carpet run scoreboard players set @s on_light_blue 0