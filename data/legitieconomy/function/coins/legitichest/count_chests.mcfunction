schedule function legitieconomy:coins/legitichest/count_chests 300s replace

execute as @e[type=item_display,tag=k.treasureChest] at @s run function legitieconomy:coins/legitichest/reset_chest

execute store result score .temp Legiticoins if entity @e[type=item_display,tag=k.treasureChest,scores={le.Entity=1}]
execute store result storage k.temp:temp value int 1 run scoreboard players operation .temp Legiticoins /= .2 Legiticoins

function legitieconomy:coins/legitichest/refill_chests with storage k.temp:temp