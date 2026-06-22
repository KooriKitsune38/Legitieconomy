scoreboard players operation .temp k.UUIDs = @s k.UUIDs
kill @n[type=item_display,tag=le.Pet,predicate=legitieconomy:pet/match_uuid]

execute if score @s le.petCode matches 1 run function legitieconomy:coins/pet/_spawn {pet:"blahaj"}
execute if score @s le.petCode matches 2 run function legitieconomy:coins/pet/_spawn {pet:"legitimoose"}
execute if score @s le.petCode matches 3 run function legitieconomy:coins/pet/_spawn {pet:"ragemold"}
execute if score @s le.petCode matches 4 run function legitieconomy:coins/pet/_spawn {pet:"evil_reef"}

scoreboard players reset @s le.leave