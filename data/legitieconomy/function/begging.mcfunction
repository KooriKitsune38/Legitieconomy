scoreboard players operation .temp le.beggarUUID = @s le.beggarUUID
execute as @n[type=interaction,predicate=legitieconomy:beg/match_uuid] run tp @s ~ ~ ~ ~ ~
effect give @s glowing 1 0 true

execute if score @s le.beggingTimer matches ..0 run return run function legitieconomy:cancel_beg
scoreboard players remove @s le.beggingTimer 1