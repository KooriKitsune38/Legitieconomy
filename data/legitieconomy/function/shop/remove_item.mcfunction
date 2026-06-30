execute unless score .temp Legiticoins matches ..0 unless score .temp Legiticoins matches -1 on target unless predicate legitieconomy:sneaking run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Sneak to remove the item.",color:"yellow"}]
execute unless score .temp Legiticoins matches ..0 unless score .temp Legiticoins matches -1 run summon item ~ ~ ~ {PickupDelay:0,Motion:[0d,0.3d,0d],Tags:[".temp"],Item:{id:"oak_button",count:1}}
execute unless score .temp Legiticoins matches ..0 unless score .temp Legiticoins matches -1 run data modify entity @n[type=item,distance=..0.1,tag=.temp,nbt={Age:0s}] Item set from entity @s data.shopData.item
execute unless score .temp Legiticoins matches ..0 unless score .temp Legiticoins matches -1 run data modify entity @n[type=item,distance=..0.1,tag=.temp,nbt={Age:0s}] Owner set from entity @p[tag=.temp] UUID

data remove entity @s data.shopData.item
data remove entity @s data.shopData.command
data modify entity @s CustomName.extra[0].text set value "Null"
data modify entity @s data.shopData.price set value 0
execute on passengers run data modify entity @s item.id set value "air"