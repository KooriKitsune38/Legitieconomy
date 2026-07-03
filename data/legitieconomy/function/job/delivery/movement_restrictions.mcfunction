clear @s wind_charge
clear @s ender_pearl
clear @s totem_of_undying
clear @s *[death_protection]

effect clear @s speed
effect clear @s jump_boost

scoreboard players reset @s warp

execute if entity @s[gamemode=!adventure] run return run function legitieconomy:job/delivery/end_delivery
execute unless entity @s[tag=.deliveryTemp] unless items entity @s player.cursor *[custom_data~{le.deliveryItem:true}] unless items entity @s container.* *[custom_data~{le.deliveryItem:true}] unless items entity @s weapon.offhand *[custom_data~{le.deliveryItem:true}] run return run function legitieconomy:job/delivery/end_delivery

execute if predicate legitieconomy:job/has_enchantments run return run function legitieconomy:job/delivery/end_delivery
execute if predicate legitieconomy:is_flying run return run function legitieconomy:job/delivery/end_delivery
execute if predicate legitieconomy:is_riding run return run function legitieconomy:job/delivery/end_delivery
execute unless dimension overworld run return run function legitieconomy:job/delivery/end_delivery
execute if items entity @s armor.* *[glider={}] run return run function legitieconomy:job/delivery/end_delivery
execute store result score $jump_height k.Values run attribute @s jump_strength get 1000
execute if score $jump_height k.Values matches 421.. run return run function legitieconomy:job/delivery/end_delivery
execute store result score $movement_speed k.Values run attribute @s movement_speed base get 100
execute unless score $movement_speed k.Values matches 10 run return run function legitieconomy:job/delivery/end_delivery
execute store result score $scale k.Values run attribute @s scale get 10
execute unless score $scale k.Values matches 10 run return run function legitieconomy:job/delivery/end_delivery
execute store result score $gravity k.Values run attribute @s gravity get 1000
execute if score $gravity k.Values matches ..79 run return run function legitieconomy:job/delivery/end_delivery
execute if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run return run function legitieconomy:job/delivery/end_delivery

execute if block ~.3 ~ ~.3 #legitieconomy:water run return run function legitieconomy:job/delivery/end_delivery
execute if block ~-.3 ~ ~.3 #legitieconomy:water run return run function legitieconomy:job/delivery/end_delivery
execute if block ~.3 ~ ~-.3 #legitieconomy:water run return run function legitieconomy:job/delivery/end_delivery
execute if block ~-.3 ~ ~-.3 #legitieconomy:water run return run function legitieconomy:job/delivery/end_delivery

execute anchored eyes if entity @n[type=fishing_bobber,distance=..2] run return run kill @n[type=fishing_bobber,distance=..2]
kill @n[type=wind_charge,distance=..3]
execute if entity @n[type=shulker,distance=..1.2] run return run function legitieconomy:job/delivery/end_delivery
execute if entity @n[type=happy_ghast,distance=..6] run return run function legitieconomy:job/delivery/end_delivery

execute if items entity @s container.* *[consumable] run return run function legitieconomy:job/delivery/end_delivery
execute if items entity @s armor.* *[consumable] run return run function legitieconomy:job/delivery/end_delivery
execute if items entity @s weapon.offhand *[consumable] run return run function legitieconomy:job/delivery/end_delivery

# Since the movement_speed attribute is affected when a player sprints, we have to do this to check for items that might affect it
execute if items entity @s container.* *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"movement_speed"}]}}] run return run function legitieconomy:job/delivery/end_delivery
execute if items entity @s armor.* *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"scale"}]}}] run return run function legitieconomy:job/delivery/end_delivery
execute if items entity @s weapon.offhand *[minecraft:attribute_modifiers~{modifiers:{contains:[{attribute:"scale"}]}}] run return run function legitieconomy:job/delivery/end_delivery