# Teleport Pet
tag @s add .temp
execute as @n[type=item_display,tag=le.Pet,predicate=legitieconomy:match_uuid,distance=2.5..] at @s facing entity @p[tag=.temp] eyes run tp ^ ^ ^.5
tag @s remove .temp

execute if score @s le.leave matches 1.. run function legitieconomy:coins/pet/sort_pet