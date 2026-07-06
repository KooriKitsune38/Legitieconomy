execute if score @s le.winLimit matches 1.. if entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid,distance=..2,tag=le.winLimit] run return run title @s actionbar [{text:"",color:"dark_gray"},{text:"● ",color:"gray"},{text:"You can't collect now. Wait a bit.",color:"red"},{text:" ●",color:"gray"}] 
execute if entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid,distance=..2,tag=le.winLimit] run scoreboard players set @s le.winLimit 1

tag @s add .temp
execute as @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid] at @s if data entity @s data.command run function legitieconomy:job/delivery/run_command with entity @s data
tag @s remove .temp

tp @s 0 64 0

$execute store result storage k.temp:temp coins int 1 run random value $(reward)
execute at @s run function legitieconomy:coins/earn_coins with storage k.temp:temp
execute at @s run function legitieconomy:job/delivery/end_delivery

tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Delivery completed!","color":"green"}]