data merge entity @s {response:1b}
tag @s add le.beggarInteraction
scoreboard players operation @s beg = @p[tag=.temp] beg
execute store result score @s le.beggarUUID run scoreboard players get @p[tag=.temp] le.beggarUUID

scoreboard players set .interactionHeight beg 2
scoreboard players set .interactionWidth beg 10
execute store result score .interactionSizeMultiplier beg run attribute @p[tag=.temp] scale base get 10

execute store result entity @s height float 0.1 run scoreboard players operation .interactionHeight beg *= .interactionSizeMultiplier beg
execute store result entity @s width float 0.01 run scoreboard players operation .interactionWidth beg *= .interactionSizeMultiplier beg


function legitieconomy:interaction_name with storage k.temp:temp