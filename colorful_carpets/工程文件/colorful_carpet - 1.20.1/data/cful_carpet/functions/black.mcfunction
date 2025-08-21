execute as @a at @s if block ~ ~ ~ minecraft:black_carpet run scoreboard players set @s on_black 1
effect give @a[scores={on_black=1}] minecraft:blindness 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:black_carpet run scoreboard players set @s on_black 0