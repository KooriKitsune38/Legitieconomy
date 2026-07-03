tag @s add can_take_damage
effect give @s glowing 1 0 true
execute at @s run effect give @a[distance=..8] weakness 1 255 true

execute at @s run function legitieconomy:job/delivery/movement_restrictions
execute unless score @s le.deliveryUUIDs matches -2147483648..2147483647 run return fail

tag @s remove .deliveryTemp

scoreboard players operation .temp le.deliveryUUIDs = @s le.deliveryUUIDs
execute at @s if entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid,distance=..2] run function legitieconomy:job/delivery/complete_delivery with entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid] data
execute if predicate legitieconomy:5_seconds at @s anchored eyes rotated ~ 0 positioned ^ ^-.2 ^ facing entity @n[type=item_display,tag=le.deliveryBox,predicate=legitieconomy:job/delivery_uuid] feet run function legitieconomy:job/delivery/show_direction