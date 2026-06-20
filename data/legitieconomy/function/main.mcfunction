# aug 4th 2025, begging turned off by legitimoose, because i didn't like seeing the command spam in chat lol
# I added a cooldown
scoreboard players enable @a beg
execute as @a[scores={beg=-1..}] unless score @s beg matches 0 at @s run function legitieconomy:trigger
execute as @a[scores={le.beggingTimer=0..}] at @s run function legitieconomy:begging
execute as @e[type=interaction,tag=le.beggarInteraction] if data entity @s interaction run function legitieconomy:interacted

execute at @e[type=item_display,tag=k.hasCoin,tag=k.treasureChest] run particle wax_on ~ ~.5 ~ .3 .3 .3 0 1 normal

execute as @e[type=item,tag=le.poopDrop,predicate=legitieconomy:on_ground] at @s run function legitieconomy:coins/gadget/explode_poop