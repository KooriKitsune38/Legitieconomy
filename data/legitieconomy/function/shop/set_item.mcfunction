execute if data entity @s data.shopData.item.id at @s run return run function legitieconomy:shop/remove_item

execute on target run scoreboard players enable @s[gamemode=creative] amount
execute on target unless score @s amount matches 1.. run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"amount\" to set how many items are sold at once.",color:"green"}]
execute on target run scoreboard players enable @s[gamemode=creative] stock
execute on target if score @s stock matches ..0 unless score @s stock matches -1 run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"stock\" to set the stored amount for the item (-1 for infinite).",color:"green"}]
execute on target run scoreboard players enable @s price
execute on target unless score @s price matches 1.. unless score @s price matches -1 run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"price\" to set the price for the item, then click again. (-1 for free item)",color:"green"}]

execute on target unless data entity @s SelectedItem run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Hold an item to place it",color:"red"}]

data modify storage k.temp:temp item set from entity @p[tag=.temp] SelectedItem
data modify entity @s data.shopData.item set from storage k.temp:temp item
execute if score @p[tag=.temp] stock matches -1.. unless score @p[tag=.temp] stock matches 0 store result entity @s data.shopData.item.count int 1 run scoreboard players get @p[tag=.temp] stock
data modify entity @s data.shopData.sellAmount set value 1
execute if score @p[tag=.temp] amount matches 1.. store result entity @s data.shopData.sellAmount int 1 on target run scoreboard players get @s amount
execute on passengers run data modify entity @s item set from storage k.temp:temp item

execute store result entity @s data.shopData.price int 1 store result storage k.temp:temp string int 1 run scoreboard players get @p[tag=.temp] price
data modify entity @s CustomName.extra[0].text set string storage k.temp:temp string

execute if score @p[tag=.temp] price matches -1 run data merge entity @s {data:{shopData:{price:0}},CustomName:[{text:"Price: ",color:"light_purple"},{text:"Free!",color:"aqua"},{text:"",color:"aqua"}]}

execute on target run scoreboard players reset @s price
execute on target run scoreboard players reset @s amount
execute on target run scoreboard players reset @s stock
execute on target run item replace entity @s weapon.mainhand with air