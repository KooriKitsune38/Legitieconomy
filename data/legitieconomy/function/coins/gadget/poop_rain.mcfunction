execute unless score .poopRain le.gadgetValues matches ..0 run schedule function legitieconomy:coins/gadget/poop_rain 1s replace

execute at @a run particle dust_pillar{block_state:{Name:"brown_concrete"}} ~ ~20 ~ 10 1 10 1 20 normal

scoreboard players remove .poopRain le.gadgetValues 1

summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}
summon item 0 100 0 {Item:{id:"brown_dye",count:1},PickupDelay:32767, Age:5400,Tags:[".falling",".temp","le.poopDrop"]}


execute store result storage k.temp:temp value int 1 run random value 80..120

execute as @e[type=item,tag=le.poopDrop,tag=.temp] run function legitieconomy:coins/gadget/spread_poop with storage k.temp:temp