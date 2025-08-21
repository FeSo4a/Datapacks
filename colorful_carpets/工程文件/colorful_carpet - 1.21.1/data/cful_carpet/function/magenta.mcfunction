execute as @a at @s if block ~ ~ ~ minecraft:magenta_carpet run scoreboard players set @s on_magenta 1
effect give @a[scores={on_magenta=1}] minecraft:luck 1 0 true

execute as @a at @s unless block ~ ~ ~ minecraft:magenta_carpet run scoreboard players set @s on_magenta 0