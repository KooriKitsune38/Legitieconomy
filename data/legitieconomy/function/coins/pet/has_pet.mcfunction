# Teleport Pet
tag @s add .temp

scoreboard players operation .temp k.UUIDs = @s k.UUIDs
execute anchored eyes positioned ^ ^ ^ as @n[type=item_display,tag=le.Pet,predicate=legitieconomy:pet/match_uuid,distance=2..] at @s facing entity @p[tag=.temp] eyes run tp @s ^ ^ ^.5 ~ ~

tag @s remove .temp

execute if score @s le.leave matches 1.. run function legitieconomy:coins/pet/sort_pet