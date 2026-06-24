scoreboard players operation .temp le.beggarUUID = @s le.beggarUUID
execute unless entity @p[predicate=legitieconomy:beg/match_uuid] run return run kill @s
execute on target if entity @s[predicate=legitieconomy:beg/match_uuid] run return run function legitieconomy:cancel_beg
scoreboard players operation .temp beg = @s beg

execute if score @p[predicate=legitieconomy:beg/match_uuid] le.beggingTimer > .beggingInteractionThreshold le.beggingTimer run return fail

scoreboard players set .success beg 0
scoreboard players add @s Legiticoins 0
execute on target run scoreboard players add @s Legiticoins 0
execute store success score .success beg on target if score @s Legiticoins < .temp beg
execute if score .success beg matches 1 on target run tellraw @s [{text:"| ",color:"dark_gray"},{"text":"You don't have enough money to send!","color":"red"}]
execute if score .success beg matches 1 run return run data remove entity @s interaction

tag @p[predicate=legitieconomy:beg/match_uuid] add .temp

execute on target run function legitieconomy:send_money
execute as @p[tag=.temp] run function legitieconomy:receive_money
execute as @p[predicate=legitieconomy:beg/match_uuid] run function legitieconomy:cancel_beg

tag @a[tag=.temp] remove .temp
tag @a[tag=.temp2] remove .temp2