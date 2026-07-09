# As the raffle shop

execute if score @s le.raffleUUIDs matches -2147483648..2147483647 on attacker run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"This shop has already an active ruffle.",color:"red"}]

execute on attacker run scoreboard players enable @s price
execute on attacker run scoreboard players enable @s raffle

execute on attacker unless score @s Legiticoins matches ..0 if score @s raffle > @s Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You can't set the raffle bigger than your coins!",color:"red"}]

execute on attacker unless score @s raffle matches 1.. run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"raffle\" to set the prize.",color:"green"}]
execute on attacker unless score @s price matches 1.. unless score @s price matches -1 run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"price\" to set the entry cost. (-1 for free entry)",color:"green"}]

execute on attacker unless score @s raffle matches 1.. if score @s raffle <= @s Legiticoins run return run tellraw @s [{text:"\n| ",color:"dark_gray"},{text:"It will get coins from your balance and set it as the prize.",color:"green"},{text:"\n| ",color:"dark_gray"},{text:"If you leave all coins will go back to you and the raffle will end.",color:"green"}]
execute on attacker unless score @s price matches -1 unless score @s price matches 1.. run return run tellraw @s [{text:"\n| ",color:"dark_gray"},{text:"It will get coins from your balance and set it as the prize.",color:"green"},{text:"\n| ",color:"dark_gray"},{text:"If you leave all coins will go back to you and the raffle will end.",color:"green"}]

execute on attacker run function legitieconomy:raffle/raffle_host

scoreboard players operation @s le.raffleUUIDs = @p[tag=.temp] k.UUIDs
execute store result storage k.temp:temp prize int 1 run scoreboard players operation @s le.rafflePrize = @p[tag=.temp] le.raffleCoins

scoreboard players operation .temp k.UUIDs = @s k.UUIDs
execute as @n[type=text_display,predicate=legitieconomy:match_uuid] run function legitieconomy:raffle/set_text

execute store result entity @s data.shopData.price int 1 store result storage k.temp:temp string int 1 run scoreboard players get @p[tag=.temp] price
data modify entity @s CustomName.extra[0].text set string storage k.temp:temp string

execute if score @p[tag=.temp] price matches -1 run data merge entity @s {data:{shopData:{price:0}},CustomName:[{text:"Price: ",color:"light_purple"},{text:"Free!",color:"aqua"},{text:"",color:"aqua"}]}

scoreboard players reset @p[tag=.temp] price

execute as @p[tag=.temp] run loot spawn ~ ~ ~ loot legitieconomy:player_head
data modify entity @s data.shopData.owner set string entity @n[type=item,nbt={Age:0s},distance=..0.2] Item.components."minecraft:profile".name
kill @n[type=item,nbt={Age:0s},distance=..0.2]