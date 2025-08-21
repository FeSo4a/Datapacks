execute as @a at @s if block ~ ~ ~ minecraft:brown_carpet run scoreboard players set @s on_brown 1
effect give @a[scores={on_brown=1}] minecraft:slowness 1 1 true

execute as @a at @s unless block ~ ~ ~ minecraft:brown_carpet run scoreboard players set @s on_brown 0