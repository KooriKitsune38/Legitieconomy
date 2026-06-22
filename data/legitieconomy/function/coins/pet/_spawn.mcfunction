scoreboard players operation .temp k.UUIDs = @s k.UUIDs
kill @n[type=item_display,tag=le.Pet,predicate=legitieconomy:pet/match_uuid]

tag @s add .temp
scoreboard players operation .temp k.UUIDs = @s k.UUIDs
$execute summon item_display run function legitieconomy:coins/pet/spawn/$(pet)
tag @s remove .temp

particle poof ~ ~ ~ .1 .1 .1 0.2 10 normal
playsound entity.puffer_fish.blow_up player @a ~ ~ ~ 1 1.5