# Errors
execute unless score @s le.rafflePrize matches 1.. on target run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"There's no host currently.",color:"red"}]
execute on target if score @s le.raffleCoins matches -1.. unless score @s le.raffleCoins matches 0 run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You already joined the raffle!",color:"red"}]
execute on target if score @s Legiticoins < .price Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You don't have enought coinz",color:"red"}]

# Accept
scoreboard players operation .temp le.raffleUUIDs = @s le.raffleUUIDs
execute on target run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You joined ",color:"green"},{selector:"@p[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost]",color:"aqua"},{text:"'s raffle! ('/trigger leave_raffle' to leave)",color:"green"}]
execute on target run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Leaving the game (not by trigger) will lose you coins!",color:"red"}]

execute on target run scoreboard players enable @s leave_raffle
execute on target run scoreboard players reset @s raffle
execute on target run scoreboard players reset @s price

scoreboard players operation @p[tag=.temp] le.raffleUUIDs = @s le.raffleUUIDs
execute on target run scoreboard players operation @s le.raffleCoins = .price Legiticoins
execute if score .price Legiticoins matches 0 on target run scoreboard players set @s le.raffleCoins -1
execute on target run scoreboard players operation @s Legiticoins -= .price Legiticoins
scoreboard players operation @s le.raffleCoins += .price Legiticoins

particle totem_of_undying ~ ~ ~ .1 .1 .1 0.1 20 normal
playsound block.note_block.bell player @a ~ ~ ~ 1 1.6