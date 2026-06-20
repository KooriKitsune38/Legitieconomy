execute if entity @p[distance=..2,predicate=legitieconomy:on_ground] at @p[distance=..2] run summon wind_charge ~ ~ ~ {Motion:[0f,-1f,0f]}
execute if entity @p[distance=..2,predicate=legitieconomy:on_ground] run particle poof ~ ~ ~ 0 0 0 0.2 10 normal
execute if entity @s[tag=le.goldenPoop] as @p[distance=..2,predicate=legitieconomy:on_ground] run function legitieconomy:coins/earn_coins {coins:1}
execute if entity @p[distance=..2,predicate=legitieconomy:on_ground] run kill @s

execute unless entity @s[tag=.falling] run return fail

tag @s remove .falling
playsound block.mud.place block @a[distance=..50] ~ ~ ~ 1 1 0.2
particle dust_pillar{block_state:{Name:"brown_concrete"}} ~ ~ ~ .5 0 .5 0.6 50 normal