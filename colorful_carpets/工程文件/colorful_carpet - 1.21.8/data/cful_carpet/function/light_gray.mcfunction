execute as @a at @s if block ~ ~ ~ minecraft:light_gray_carpet run scoreboard players set @s on_light_gray 1
effect give @a[scores={on_light_gray=1}] minecraft:night_vision 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:light_gray_carpet run scoreboard players set @s on_light_gray 0