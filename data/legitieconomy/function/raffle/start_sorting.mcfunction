advancement revoke @s only legitieconomy:sort_winner

scoreboard players reset @s sort_winner
scoreboard players enable @s sort_winner

scoreboard players operation .temp le.raffleUUIDs = @s le.raffleUUIDs
execute as @n[type=interaction,tag=le.Shop,tag=le.raffleShop,predicate=legitieconomy:raffle/match_uuid] at @s run function legitieconomy:raffle/select_winner