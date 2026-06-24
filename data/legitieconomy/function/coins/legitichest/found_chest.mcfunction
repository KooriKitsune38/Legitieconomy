advancement revoke @s only legitieconomy:clicked_legitichest

#execute unless entity @s[predicate=legitieconomy:adventure_mode] run return run tellraw @s [{text:"| ",color:"dark_gray"}, {text:"You can only collect this in adventure mode!",color:"red"}]

execute unless entity @n[type=item_display,distance=..8,tag=k.treasureChest,scores={le.Entity=1}] run return fail
execute at @n[type=item_display,distance=..8,tag=k.treasureChest] unless block ~ ~ ~ #legitieconomy:chest{lock:{components:{"minecraft:custom_data":{legitichest:true}}}} run return fail

stopsound @s block
function legitieconomy:coins/earn_coins {coins:1}

execute as @n[type=item_display,distance=..8,tag=k.treasureChest] at @s run function legitieconomy:coins/legitichest/reset_chest