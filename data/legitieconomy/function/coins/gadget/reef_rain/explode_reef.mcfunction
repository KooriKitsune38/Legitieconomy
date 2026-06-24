execute if entity @p[distance=..1.1,predicate=legitieconomy:on_ground] at @p[distance=..2] run summon wind_charge ~ ~ ~ {Motion:[0f,-1f,0f]}
execute if entity @p[distance=..1.1,predicate=legitieconomy:on_ground] run particle poof ~ ~ ~ 0 0 0 0.2 10 normal
execute if entity @s[tag=le.goldenReef,scores={le.Entity=1}] as @p[distance=..1.1,predicate=legitieconomy:on_ground] run function legitieconomy:coins/earn_coins {coins:1}
execute if entity @p[distance=..1.1,predicate=legitieconomy:on_ground] run kill @s

execute unless predicate legitieconomy:half_second run return fail
execute unless entity @s[tag=.falling] run return fail

tag @s remove .falling
playsound block.amethyst_block.resonate block @a[distance=..50] ~ ~ ~ 1.5 1.5 1
execute if entity @s[tag=le.goldenReef] run return run particle dust_pillar{block_state:{Name:"gold_block"}} ~ ~ ~ .5 0 .5 0.6 50 normal
particle dust_pillar{block_state:{Name:"amethyst_block"}} ~ ~ ~ .5 0 .5 0.6 50 normal