scoreboard objectives add gm trigger
scoreboard players enable @a gm

gamemode creative @a[scores={gm=0}]
gamemode survival @a[scores={gm=1}]
gamemode adventure @a[scores={gm=2}]
gamemode spectator @a[scores={gm=3}]

scoreboard players set @a[scores={gm=0}] gm -1
scoreboard players set @a[scores={gm=1}] gm -1
scoreboard players set @a[scores={gm=2}] gm -1
scoreboard players set @a[scores={gm=3}] gm -1
