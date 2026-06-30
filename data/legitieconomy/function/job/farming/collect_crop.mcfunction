function legitieconomy:job/farming/replant_crop
particle block{block_state:{Name:"wheat",Properties:{age:"7"}}} ~ ~ ~ .25 .25 .25 1 10 normal
playsound block.crop.break block @a ~ ~ ~ 1 1

scoreboard players add @s le.farmingJob 1

title @s actionbar [{"text":"Crops Harvested: ","color":"green"},{"score":{"objective":"le.farmingJob","name":"@s"},"color":"light_purple"},"/",{"score":{"name":".requiredAmount","objective":"le.farmingJob"},"color":"green"}]

execute unless score @s le.farmingJob >= .requiredAmount le.farmingJob run return fail

scoreboard players reset @s le.farmingJob
function legitieconomy:coins/earn_coins {coins:1}