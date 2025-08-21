execute as @a at @s if block ~ ~ ~ minecraft:orange_carpet run scoreboard players set @s on_orange 1
effect give @a[scores={on_orange=1}] minecraft:fire_resistance 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:orange_carpet run scoreboard players set @s on_orange 0