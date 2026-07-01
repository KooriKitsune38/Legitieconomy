scoreboard players operation @p[tag=.temp] le.deliveryUUIDs = @s le.deliveryUUIDs

loot spawn ~ ~ ~ loot legitieconomy:delivery_item
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] PickupDelay set value 0
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Owner set from entity @p[tag=.temp] UUID
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore" append value [{text:"Coords: ",italic:false,color:"gray"},{text:"x",color:"dark_gray"},"1",{text:" - y",color:"dark_gray"},"2",{text:" - z",color:"dark_gray"},"3"]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[1] set string entity @s Pos[0]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[3] set string entity @s Pos[1]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[5] set string entity @s Pos[3]

tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{interpret:true,nbt:"Item.components.\"minecraft:lore\"[-1]",entity:"@n[type=item,nbt={Age:0s},distance=..0.1]"}]