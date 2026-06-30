# Pet Code: 7
scoreboard players set @p[tag=.temp] le.petCode 7

data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1}}

loot spawn ~ ~ ~ loot legitieconomy:player_head
data modify entity @s item set from entity @n[type=item,nbt={Age:0s},distance=..0.1] Item
kill @n[type=item,nbt={Age:0s},distance=..0.1]

tag @s add le.petNarcissus
tag @s add le.Pet
scoreboard players operation @s k.UUIDs = .temp k.UUIDs