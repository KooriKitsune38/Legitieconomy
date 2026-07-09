# As the shop raffle

scoreboard players operation .temp le.raffleUUIDs = @s le.raffleUUIDs

tellraw @a[predicate=legitieconomy:raffle/match_uuid] [{text:"| ",color:"dark_gray"},{text:"The raffle ended",color:"blue"}]

scoreboard players reset @a[predicate=legitieconomy:raffle/match_uuid] le.raffleCoins
scoreboard players reset @a[predicate=legitieconomy:raffle/match_uuid] le.raffleUUIDs
tag @a[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost] remove le.raffleHost

scoreboard players reset @s le.raffleUUIDs
scoreboard players reset @s le.raffleCoins
scoreboard players reset @s le.rafflePrize
scoreboard players reset @s leave_raffle
scoreboard players reset @s sort_winner

data modify entity @s data.shopData.owner set value ""
data modify entity @s CustomName.extra[0].text set value "Null"
data modify entity @s CustomName.extra[1].text set value "$"
data modify entity @s data.shopData.price set value 0
data modify entity @n[type=text_display,predicate=legitieconomy:match_uuid] text.extra[0].text set value "0"