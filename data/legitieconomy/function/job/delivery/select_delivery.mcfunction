$execute as @n[type=item_display,tag=le.deliveryBox,scores={le.Entity=1},tag=$(entityTag)] run function legitieconomy:job/delivery/get_box
tag @p[tag=.temp] remove .temp

data remove entity @s interaction