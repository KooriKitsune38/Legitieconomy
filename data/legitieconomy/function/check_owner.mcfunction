scoreboard players operation .temp k.UUIDs = @s k.UUIDs
execute if entity @p[scores={le.petCode=-2147483648..2147483647},predicate=legitieconomy:pet/match_uuid] run return fail
execute at @s run function legitieconomy:coins/pet/_kill