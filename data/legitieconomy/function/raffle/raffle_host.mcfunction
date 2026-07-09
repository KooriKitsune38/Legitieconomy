# As the host

tag @s add le.raffleHost

scoreboard players operation @s le.raffleCoins = @s raffle
scoreboard players operation @s Legiticoins -= @s raffle

scoreboard players operation @s le.raffleUUIDs = @s k.UUIDs

scoreboard players reset @s raffle

tellraw @s [{text:"| ",color:"dark_gray"},{text:"Raffle hosted!",color:"blue"}]
execute at @s run particle totem_of_undying ~ ~ ~ .1 .1 .1 0.1 20 normal
execute at @s run playsound block.note_block.bell player @a ~ ~ ~ 1 1.6