execute store result score .x le.afk run data get entity @s Motion[0] 10
execute store result score .y le.afk run data get entity @s Motion[1] 10
execute store result score .z le.afk run data get entity @s Motion[2] 10

scoreboard players set .temp le.afk 1
execute unless score .x le.afk matches 0 run scoreboard players set .temp le.afk 0
execute unless score .y le.afk matches -1 run scoreboard players set .temp le.afk 0
execute unless score .z le.afk matches 0 run scoreboard players set .temp le.afk 0

execute if score .temp le.afk matches 1 run scoreboard players add @s le.afk 1
execute unless score .temp le.afk matches 1 run scoreboard players reset @s le.afk