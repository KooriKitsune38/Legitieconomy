# Errors
execute unless score @s le.rafflePrize matches 1.. on target run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"There's no host currently.",color:"red"}]
execute on target if score @s le.raffleCoins matches 1.. run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You already joined the raffle!",color:"red"}]
execute on target if score @s Legiticoins < .price Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You don't have enought coinz",color:"red"}]

# Accept
execute on target run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You joined ",color:"green"},{selector:"@p[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost]",color:"aqua"},{text:"'s ruffle!",color:"green"}]
execute on target run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Leaving will lose you coins!",color:"red"}]

scoreboard players operation @p[tag=.temp] le.raffleUUIDs = @s le.raffleUUIDs

execute on target run scoreboard players operation @s le.raffleCoins = .price Legiticoins
execute on target run scoreboard players operation @s Legiticoins -= .price Legiticoins
scoreboard players operation @s le.raffleCoins += .price Legiticoins

