# As the host

tag @s add le.raffleHost

scoreboard players operation @s le.raffleCoins = @s raffle
scoreboard players operation @s Legiticoins -= @s raffle

scoreboard players operation @s le.raffleUUIDs = @s k.UUIDs

title @a[distance=..16] actionbar [{"selector":"@s","color":"light_purple"},{"text":" has started a raffle, prize: "},{"score":{"name":"@s","objective":"raffle"},"color":"aqua"},{"color":"aqua","text":"$"}]

scoreboard players reset @s raffle
scoreboard players enable @s leave_raffle
scoreboard players enable @s sort_winner

tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"sort_winner\" to roll the winner.",color:"green"}]
tellraw @s [{text:"| ",color:"dark_gray"},{text:"Raffle hosted!",color:"blue"}]
execute at @s run particle totem_of_undying ~ ~ ~ .1 .1 .1 0.1 20 normal
execute at @s run playsound block.note_block.bell player @a[distance=..16] ~ ~ ~ 1 1.6 1