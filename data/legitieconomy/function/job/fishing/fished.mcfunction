advancement revoke @s only legitieconomy:fished

execute unless entity @s[tag=le.canFish] run return run tag @s remove le.canFish

tag @s remove le.canFish

execute store result storage k.temp:temp coins int 1 run random value 2..5
function legitieconomy:coins/earn_coins with storage k.temp:temp