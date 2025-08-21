execute as @a at @s if block ~ ~ ~ minecraft:lime_carpet run scoreboard players set @s on_lime 1
effect give @a[scores={on_lime=1}] minecraft:glowing 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:lime_carpet run scoreboard players set @s on_lime 0