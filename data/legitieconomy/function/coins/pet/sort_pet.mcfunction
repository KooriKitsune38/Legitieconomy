scoreboard players reset @s le.leave

tag @s[tag=.temp] remove le.noPet
execute if entity @s[tag=le.noPet] run return fail
execute if score @s le.petCode matches 1 run function legitieconomy:coins/pet/_spawn {pet:"blahaj"}
execute if score @s le.petCode matches 2 run function legitieconomy:coins/pet/_spawn {pet:"legitimoose"}
execute if score @s le.petCode matches 3 run function legitieconomy:coins/pet/_spawn {pet:"ragemold"}
execute if score @s le.petCode matches 4 run function legitieconomy:coins/pet/_spawn {pet:"reef"}
execute if score @s le.petCode matches 5 run function legitieconomy:coins/pet/_spawn {pet:"mossy_cobblestone"}
execute if score @s le.petCode matches 6 run function legitieconomy:coins/pet/_spawn {pet:"mod"}
execute if score @s le.petCode matches 7 run function legitieconomy:coins/pet/_spawn {pet:"narcissus"}