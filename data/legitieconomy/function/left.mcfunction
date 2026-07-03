scoreboard players reset @s le.leave
scoreboard players reset @s price
scoreboard players reset @s stock
scoreboard players reset @s amount
tag @s remove can_take_damage
tag @s remove le.canFish

execute if score @s le.deliveryUUIDs matches -2147483648..2147483647 run function legitieconomy:job/delivery/end_delivery