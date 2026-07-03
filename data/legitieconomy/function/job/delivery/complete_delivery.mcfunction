tp @s 0 64 0

execute store result storage k.temp:temp coins int 1 run random value 6..12
execute at @s run function legitieconomy:coins/earn_coins with storage k.temp:temp
execute at @s run function legitieconomy:job/delivery/end_delivery

tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Delivery completed!","color":"green"}]