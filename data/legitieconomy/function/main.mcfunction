# aug 4th 2025, begging turned off by legitimoose, because i didn't like seeing the command spam in chat lol
# Disabled Begging again - Koori
scoreboard players enable @a[predicate=legitieconomy:10_seconds] beg
execute as @a[scores={beg=-1..}] unless score @s beg matches 0 at @s run function legitieconomy:trigger
execute as @a[scores={le.beggingTimer=0..}] at @s run function legitieconomy:begging
execute as @e[type=interaction,tag=le.beggarInteraction] if data entity @s interaction run function legitieconomy:interacted

# Treasure Chest
execute at @e[type=item_display,tag=k.hasCoin,tag=k.treasureChest] run particle wax_on ~ ~.5 ~ .3 .3 .3 0 1 normal

# Reef Rain
execute as @e[type=item,tag=le.reefDrop,predicate=legitieconomy:on_ground] at @s run function legitieconomy:coins/gadget/reef_rain/explode_reef

# Pets
execute as @a[scores={le.petCode=-2147483648..2147483647}] at @s run function legitieconomy:coins/pet/has_pet

execute at @e[type=item_display,tag=le.Pet,tag=le.petEvilReef,predicate=legitieconomy:half_second] run particle small_flame ~ ~ ~ .1 .1 .1 0.005 5 normal

# Shops
scoreboard players reset @s[scores={confirm=-2147483648..},predicate=legitieconomy:10_seconds] confirm
tag @a[predicate=legitieconomy:half_second,tag=le.cantShop] remove le.cantShop

# Jobs
execute as @a[gamemode=!spectator] at @s positioned ~ ~0.0625 ~ if predicate legitieconomy:job/can_farm run function legitieconomy:job/farming/collect_crop
effect give @a[predicate=legitieconomy:job/on_farmland] slow_falling 1 0 true

execute as @a[scores={le.deliveryUUIDs=-2147483648..},predicate=legitieconomy:half_second] run function legitieconomy:job/delivery/deliverying
tag @a[predicate=legitieconomy:10_seconds] remove le.deliveryDelay

execute as @e[type=fishing_bobber,predicate=!legitieconomy:job/hook_water] on origin run tag @s remove le.canFish
execute as @e[type=fishing_bobber,predicate=legitieconomy:job/hook_water] on origin run tag @s add le.canFish

# Leave
execute as @a[scores={le.leave=1..}] run function legitieconomy:left

# Death
execute as @a[scores={le.death=1..}] run function legitieconomy:death