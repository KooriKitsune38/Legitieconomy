tag @s add .temp

# Attack
execute if data entity @s attack run return run function legitieconomy:shop/show_info

# Interaction
execute store result score .temp Legiticoins if entity @e[type=item]
execute if score .temp Legiticoins matches 100.. on target run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"There are too many items in the world! Retry Later.",color:"red"}]

scoreboard players reset .temp Legiticoins
execute unless entity @s[scores={k.UUIDs=-2147483648..2147483647}] run return run function legitieconomy:shop/register_shop

scoreboard players operation .temp k.UUIDs = @s k.UUIDs
execute if entity @p[tag=.temp,predicate=legitieconomy:match_uuid] run return run function legitieconomy:shop/set_item

execute if data entity @s data.shopData.command run return run function legitieconomy:shop/run_command with entity @s data.shopData

execute unless data entity @s data.shopData.item on target run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"There's no item breh",color:"red"}]

execute store result score .temp Legiticoins run data get entity @s data.shopData.price
execute on target if score @s Legiticoins < .temp Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You don't have enought coinz",color:"red"}]

execute on target run scoreboard players operation @s Legiticoins -= .temp Legiticoins
function legitieconomy:shop/pay_owner with entity @s data.shopData

execute on target anchored eyes rotated ~ 0 run particle minecraft:item{item:{id:"sunflower"}} ^ ^-.5 ^ .2 .3 .2 0.2 10 normal
playsound minecraft:block.note_block.flute player @s ~ ~ ~ 1 2

summon item ~ ~ ~ {PickupDelay:0,Motion:[0d,0.3d,0d],Tags:[".temp"],Item:{id:"oak_button",count:1}}
data modify entity @n[type=item,distance=..0.1,tag=.temp,nbt={Age:0s}] Item set from entity @s data.shopData.item
data modify entity @n[type=item,distance=..0.1,tag=.temp,nbt={Age:0s}] Owner set from entity @p[tag=.temp] UUID

execute unless data entity @s data.shopData.item{count:1} run data modify entity @n[type=item,distance=..0.1,tag=.temp,nbt={Age:0s}] Item.count set value 1

execute store result score .temp Legiticoins run data get entity @s data.shopData.item.count
execute unless score .temp Legiticoins matches -1 store result entity @s data.shopData.item.count int 1 run scoreboard players remove .temp Legiticoins 1
execute unless score .temp Legiticoins matches -1 if score .temp Legiticoins matches ..0 run function legitieconomy:shop/remove_item