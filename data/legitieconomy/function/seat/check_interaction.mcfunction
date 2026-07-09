execute if predicate legitieconomy:has_passengers run return run tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{text:"Someone's already sitting here.",color:"red"}]

ride @p[tag=.temp] mount @s
data remove entity @s interaction