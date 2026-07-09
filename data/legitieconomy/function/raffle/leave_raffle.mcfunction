advancement revoke @s only legitieconomy:leave_raffle

execute if score @s le.raffleCoins matches -2147483648.. unless score @s le.raffleCoins matches -1 run scoreboard players operation @s Legiticoins += @s le.raffleCoins
scoreboard players reset @s le.raffleCoins
scoreboard players reset @s le.raffleUUIDs
tag @s remove le.raffleHost

tellraw @s [{text:"| ",color:"dark_gray"},{text:"You left the raffle.",color:"blue"}]

execute at @s run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 1.6

scoreboard players reset @s sort_winner
scoreboard players reset @s leave_raffle