advancement revoke @s only legitieconomy:delivery_interaction

execute if score @s le.deliveryUUIDs matches -2147483648..2147483647 run return run tellraw @s [{text:"| ",color:"dark_gray"},{"text":"You already have a delivery pending!","color":"red"}]

gamemode adventure @s
clear @s
tag @s add le.deliveryDelay
tag @s add .deliveryTemp
execute as @e[type=ender_pearl] at @s on origin if entity @s[tag=.deliveryTemp] run kill @n[type=ender_pearl,distance=..0.1]

tellraw @s " "
tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Read the item's lore for the delivery info.","color":"blue"}]
tellraw @s [{text:"| ",color:"dark_gray"},{"text":"If you drop the item or get wet you'll fail.","color":"blue"}]
playsound block.note_block.pling player @s ~ ~ ~ 1 2

tag @s add .temp
execute as @n[type=interaction,predicate=legitieconomy:job/selective_delivery] run return run function legitieconomy:job/delivery/select_delivery with entity @s data."le.selectiveDelivery"

execute as @e[type=item_display,tag=le.deliveryBox,scores={le.Entity=1},limit=1,sort=random,tag=!le.noTarget] run function legitieconomy:job/delivery/get_box
tag @s remove .temp