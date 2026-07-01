advancement revoke @s only legitieconomy:clicked_legitichest

#execute unless entity @s[predicate=legitieconomy:adventure_mode] run return run tellraw @s [{text:"| ",color:"dark_gray"}, {text:"You can only collect this in adventure mode!",color:"red"}]

execute unless entity @n[type=item_display,distance=..8,tag=k.treasureChest,scores={le.Entity=1}] run return fail
execute at @n[type=item_display,distance=..8,tag=k.treasureChest] unless block ~ ~ ~ #legitieconomy:chest{lock:{components:{"minecraft:custom_data":{legitichest:true}}}} run return fail

execute store result storage k.temp:temp coins int 1 run random value 1..2
execute if predicate {condition:"random_chance",chance:0.2} run data modify storage k.temp:temp coins set value 3
execute if data storage k.temp:temp {coins:3} anchored eyes run particle block{block_state:{Name:"gold_block"}} ^ ^-.5 ^ .2 .3 .2 0.2 10 normal
stopsound @s block
function legitieconomy:coins/earn_coins with storage k.temp:temp

execute as @n[type=item_display,distance=..8,tag=k.treasureChest] at @s run function legitieconomy:coins/legitichest/reset_chest