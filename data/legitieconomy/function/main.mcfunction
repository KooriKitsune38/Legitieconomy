# aug 4th 2025, begging turned off by legitimoose, because i didn't like seeing the command spam in chat lol
# Disabled Begging again - Koori
scoreboard players enable @a beg
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
scoreboard players reset @a[scores={price=-2147483648..,le.leave=1..}] price
scoreboard players reset @a[scores={stock=-2147483648..,le.leave=1..}] stock
scoreboard players reset @a[scores={confirm=-2147483648..},predicate=legitieconomy:10_seconds] confirm
scoreboard players reset @a[scores={le.leave=1..}] le.leave
tag @a[predicate=legitieconomy:half_second,tag=le.cantShop] remove le.cantShop