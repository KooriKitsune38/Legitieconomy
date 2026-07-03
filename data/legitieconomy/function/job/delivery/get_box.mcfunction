scoreboard players operation @p[tag=.temp] le.deliveryUUIDs = @s le.deliveryUUIDs

loot spawn ~ ~ ~ loot legitieconomy:delivery_item
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] PickupDelay set value 0
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Owner set from entity @p[tag=.temp] UUID

# Reward
tellraw @p[tag=.temp] ""

data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore" append value [{text:"Reward: ",color:"gold",italic:false},{text:"",color:"yellow"},{text:" LC",color:"yellow"}]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[0].text set string entity @s data.reward

tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{text:"Reward: ",color:"gold"},{interpret:true,nbt:"data.reward",entity:"@s",color:"yellow"},{text:" LC",color:"yellow"}]

tellraw @p[tag=.temp] ""

# Coords
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore" append value [{text:"Coords: ",italic:false,color:"gray"},{text:"x",color:"dark_gray"},"1",{text:" • y",color:"dark_gray"},"2",{text:" • z",color:"dark_gray"},"3"]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[1] set string entity @s Pos[0]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[3] set string entity @s Pos[1]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[5] set string entity @s Pos[2]

tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{interpret:true,nbt:"Item.components.\"minecraft:lore\"[-1]",entity:"@n[type=item,nbt={Age:0s},distance=..0.1]"}]

# Name
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore" append value [{text:"Delivery Box: ",color:"blue",italic:false},{text:""}]
data modify entity @n[type=item,nbt={Age:0s},distance=..0.1] Item.components."minecraft:lore"[-1].extra[0] set from entity @s CustomName

tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{text:"Delivery Box: ",color:"green"},{interpret:true,nbt:"CustomName",entity:"@s"}]

tellraw @p[tag=.temp] ""