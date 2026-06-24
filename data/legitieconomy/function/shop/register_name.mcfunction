execute on target run loot spawn ~ ~ ~ loot legitieconomy:player_head
data modify entity @s data.shopData.owner set string entity @n[type=item,nbt={Age:0s},distance=..0.2] Item.components."minecraft:profile".name
kill @n[type=item,nbt={Age:0s},distance=..0.2]