execute if block ~ ~ ~ #legitieconomy:chest[facing=south] run tp @s ~ ~ ~ 0 ~
execute if block ~ ~ ~ #legitieconomy:chest[facing=north] run tp @s ~ ~ ~ 180 ~
execute if block ~ ~ ~ #legitieconomy:chest[facing=west] run tp @s ~ ~ ~ 90 ~
execute if block ~ ~ ~ #legitieconomy:chest[facing=east] run tp @s ~ ~ ~ -90 ~
execute unless block ~ ~ ~ #legitieconomy:chest run kill @s

execute unless entity @s[scores={le.Entity=1},tag=le.disabledChest] run function legitieconomy:coins/legitichest/lock_chest
execute if entity @s[scores={le.Entity=1},tag=le.disabledChest] run function legitieconomy:coins/legitichest/unlock_chest