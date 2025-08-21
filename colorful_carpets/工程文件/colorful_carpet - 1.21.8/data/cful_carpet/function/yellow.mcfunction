execute as @a at @s if block ~ ~ ~ minecraft:yellow_carpet run scoreboard players set @s on_yellow 1
effect give @a[scores={on_yellow=1}] minecraft:absorption 1 4 true

execute as @a at @s unless block ~ ~ ~ minecraft:yellow_carpet run scoreboard players set @s on_yellow 0