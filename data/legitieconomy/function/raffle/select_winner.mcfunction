# As the raffle shop

execute if entity @s[type=player] run return run function legitieconomy:raffle/start_sorting

scoreboard players operation .temp le.raffleUUIDs = @s le.raffleUUIDs

execute store result score .temp le.rafflePrize if entity @a[predicate=legitieconomy:raffle/match_uuid,scores={le.raffleCoins=-2147483648..},tag=!le.raffleHost]
execute unless score .temp le.rafflePrize matches 2.. run return run tellraw @p[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost] [{text:"| ",color:"dark_gray"},{text:"You need at least two participants to sort the winner.",color:"red"}]

tag @r[predicate=legitieconomy:raffle/match_uuid,tag=!le.raffleHost] add le.raffleWinner

execute store result storage k.temp:temp coins int 1 run scoreboard players get @s le.rafflePrize
execute as @p[tag=le.raffleWinner] run function legitieconomy:coins/earn_coins with storage k.temp:temp

execute store result storage k.temp:temp coins int 1 run scoreboard players get @s le.raffleCoins
execute as @p[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost] run function legitieconomy:coins/earn_coins with storage k.temp:temp

title @a[predicate=legitieconomy:raffle/match_uuid] title [{selector:"@p[tag=le.raffleWinner]",color:"light_purple"},{text:" won!",color:green}]

tag @a remove le.raffleWinner

function legitieconomy:raffle/end_raffle