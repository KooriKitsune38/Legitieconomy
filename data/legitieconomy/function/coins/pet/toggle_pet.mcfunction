advancement revoke @s only legitieconomy:toggle_pet
execute if entity @s[tag=le.noPet] run tag @s add .temp
execute if entity @s[tag=le.noPet] run return run function legitieconomy:coins/pet/sort_pet

tag @s add le.noPet
scoreboard players operation .temp k.UUIDs = @s k.UUIDs
execute as @n[type=item_display,tag=le.Pet,predicate=legitieconomy:match_uuid] at @s run function legitieconomy:coins/pet/_kill