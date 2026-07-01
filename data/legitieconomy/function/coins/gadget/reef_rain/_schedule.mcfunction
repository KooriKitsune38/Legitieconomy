schedule function legitieconomy:coins/gadget/reef_rain/_schedule 300s replace

execute unless entity @p[predicate=legitieconomy:in_overworld] run return fail
execute if score .reefRain le.gadgetValues matches 0.. run return fail
execute unless predicate {condition:"random_chance",chance:0.2} run return fail

tellraw @a [{text:"| ",color:"dark_gray"},{text:"It's raining reefs!",color:"light_purple"}]
execute store result score .reefRain le.gadgetValues run random value 30..120
function legitieconomy:coins/gadget/reef_rain/reef_rain