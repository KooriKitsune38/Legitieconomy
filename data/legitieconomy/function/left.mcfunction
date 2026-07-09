scoreboard players reset @s le.leave
scoreboard players reset @s price
scoreboard players reset @s stock
scoreboard players reset @s amount
scoreboard players reset @s raffle

execute as @a[tag=le.raffleHost] if score @s le.raffleCoins matches -2147483648.. run scoreboard players operation @s Legiticoins += @s le.raffleCoins
scoreboard players reset @s le.raffleCoins
scoreboard players reset @s le.raffleUUIDs
scoreboard players reset @s leave_raffle
scoreboard players reset @s sort_winner
tag @s remove le.raffleHost

tag @s remove can_take_damage
tag @s remove le.canFish

execute if score @s le.deliveryUUIDs matches -2147483648..2147483647 run function legitieconomy:job/delivery/end_delivery