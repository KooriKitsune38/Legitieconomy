tag @s add can_take_damage
effect give @s glowing 1 0 true

execute unless entity @s[tag=.deliveryTemp] unless items entity @s player.cursor *[custom_data~{le.deliveryItem:true}] unless items entity @s container.* *[custom_data~{le.deliveryItem:true}] run return run function legitieconomy:job/delivery/end_delivery
tag @s remove .deliveryTemp
execute if entity @s[gamemode=!adventure] run return run function legitieconomy:job/delivery/end_delivery

scoreboard players operation .temp le.deliveryUUIDs = @s le.deliveryUUIDs
execute at @s if entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid,distance=..4] run function legitieconomy:job/delivery/complete_delivery
execute if predicate legitieconomy:5_seconds at @s anchored eyes rotated ~ 0 positioned ^ ^-.2 ^ facing entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid] feet run function legitieconomy:job/delivery/show_direction