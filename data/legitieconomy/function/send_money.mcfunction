scoreboard players operation @s Legiticoins -= .temp beg
tellraw @s [{"text":"You sent ","color":"light_purple"},{"score":{"name":".temp","objective":"beg"},"color":"aqua"},{"text":"$","color":"aqua"}," to ",{"selector":"@p[tag=.temp]","color":"green"}]
tag @s add .temp2