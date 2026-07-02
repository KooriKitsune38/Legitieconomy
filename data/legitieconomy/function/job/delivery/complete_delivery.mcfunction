execute store result storage k.temp:temp coins int 1 run random value 4..6
function legitieconomy:coins/earn_coins with storage k.temp:temp
function legitieconomy:job/delivery/end_delivery
tp @s 0 64 0

tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Delivery completed!","color":"green"}]