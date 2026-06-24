execute store result score @s le.beggarUUID store result score .temp le.beggarUUID run data get entity @s UUID[0]
kill @n[type=interaction,tag=le.beggarInteraction,predicate=legitieconomy:beg/match_uuid]
execute if score @s beg matches -1 run return run function legitieconomy:cancel_beg

#gamerule sendCommandFeedback false

scoreboard players set @s le.beggingTimer 201

tag @s add .temp
execute store result storage k.temp:temp int int 1 run scoreboard players get @s beg
execute positioned ~ ~ ~ summon interaction run function legitieconomy:spawn_interaction
tag @s remove .temp

playsound block.note_block.bell master @a[distance=..16] ~ ~ ~ 2 1.45 1
title @a[distance=..8] actionbar [{"selector":"@s","color":"light_purple"},{"text":" is begging for: "},{"score":{"name":"@s","objective":"beg"},"color":"aqua"},{"color":"aqua","text":"$"}]

scoreboard players reset @s beg