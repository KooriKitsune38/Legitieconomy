$scoreboard players set .temp Legiticoins $(price)
execute on target if score @s k.UUIDs <= .temp Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You don't have enought coinz",color:"red"}]

execute on target run scoreboard players operation @s Legiticoins -= .temp Legiticoins

execute anchored eyes rotated ~ 0 run particle minecraft:item{item:{id:"sunflower"}} ^ ^-.5 ^ .2 .3 .2 0.2 10 normal
playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 2

$execute on target run $(command)