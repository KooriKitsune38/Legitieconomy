execute if block ~ ~ ~ chest[facing=south] run tp @s ~ ~ ~ 0 ~
execute if block ~ ~ ~ chest[facing=north] run tp @s ~ ~ ~ 180 ~
execute if block ~ ~ ~ chest[facing=west] run tp @s ~ ~ ~ 90 ~
execute if block ~ ~ ~ chest[facing=east] run tp @s ~ ~ ~ -90 ~
execute unless block ~ ~ ~ chest run kill @s