advancement revoke @s only legitieconomy:delivery_interaction

execute if score @s le.deliveryUUIDs matches -2147483648..2147483647 run return run tellraw @s [{text:"| ",color:"dark_gray"},{"text":"You already have a delivery pending!","color":"red"}]

gamemode adventure @s
clear @s *[!custom_model_data={strings:["legitimoose:navigator"]}]

tellraw @s " "
tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Read the item's lore for the delivery info.","color":"blue"}]
tellraw @s [{text:"| ",color:"dark_gray"},{"text":"If you drop the item or you fly you'll fail.","color":"blue"}]
playsound block.note_block.pling player @s ~ ~ ~ 1 2

tag @s add .temp
execute as @e[type=item_display,tag=le.deliveryBox,scores={le.Entity=1},limit=1,sort=random] run function legitieconomy:job/delivery/get_box
tag @s remove .temp

tag @s add .deliveryTemp