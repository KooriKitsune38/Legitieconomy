$scoreboard players add @s Legiticoins $(coins)
$scoreboard players set .tempCoins Legiticoins $(coins)

execute at @s anchored eyes rotated ~ 0 run particle minecraft:item{item:{id:"sunflower"}} ^ ^-.5 ^ .2 .3 .2 0.2 10 normal
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 2

$execute if score .tempCoins Legiticoins matches 1 run return run title @s actionbar [{text:"",color:"dark_gray"},{text:"$(coins) ",color:"gray"},{text:"LegitiCoin",color:"gold",hover_event:{action:"show_item",id:"sunflower",components:{"minecraft:custom_data":{legitiCoin:1b},"minecraft:custom_name":{color:"gold",italic:false,text:"LegitiCoin"},"minecraft:lore":[{color:"gray",italic:false,text:"Collect Me!"}]}}},{text:" collected!",color:"gray"}]

$title @s actionbar [{text:"",color:"dark_gray"},{text:"$(coins) ",color:"gray"},{text:"LegitiCoins",color:"gold",hover_event:{action:"show_item",id:"sunflower",components:{"minecraft:custom_data":{legitiCoin:1b},"minecraft:custom_name":{color:"gold",italic:false,text:"LegitiCoin"},"minecraft:lore":[{color:"gray",italic:false,text:"Collect Me!"}]}}},{text:" collected!",color:"gray"}]