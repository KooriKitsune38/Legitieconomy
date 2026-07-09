execute unless score @s le.raffleUUIDs matches -2147483648..2147483647 run return fail
scoreboard players operation .temp le.raffleUUIDs = @s le.raffleUUIDs
execute if entity @p[predicate=legitieconomy:raffle/match_uuid,tag=le.raffleHost] run return fail

execute as @a[predicate=legitieconomy:raffle/match_uuid,scores={le.raffleCoins=-2147483648..}] unless score @s le.raffleCoins matches -1 run scoreboard players operation @s Legiticoins += @s le.raffleCoins
tellraw @a[predicate=legitieconomy:raffle/match_uuid,scores={le.raffleCoins=-2147483648..}] [{text:"| ",color:"dark_gray"},{text:"The host left, you got your coins back.",color:"red"}]

execute at @s run playsound minecraft:block.note_block.harp player @a ~ ~ ~ 1 1.6

function legitieconomy:raffle/end_raffle