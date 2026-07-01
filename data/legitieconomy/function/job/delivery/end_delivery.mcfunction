scoreboard players reset @s le.deliveryUUIDs
clear @s *[custom_data~{le.deliveryItem:true}]
execute if items entity @s player.cursor *[custom_data~{le.deliveryItem:true}] run item replace entity @s player.cursor with air
tag @s remove can_take_damage

tellraw @s [{text:"| ",color:"dark_gray"},{"text":"Delivery ended!","color":"blue"}]

execute at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 1 2
execute at @s anchored eyes run particle poof ~ ~ ~ .2 .2 .2 0.2 10 normal