execute if score .price Legiticoins matches 0 run return fail
$scoreboard players operation $(owner) Legiticoins += .price Legiticoins

$title @p[name=$(owner)] actionbar [{text:"",color:"dark_gray"},{score:{name:".price",objective:"Legiticoins"},color:"gray"}," ",{text:"LegitiCoin",color:"gold",hover_event:{action:"show_item",id:"sunflower",components:{"minecraft:custom_data":{legitiCoin:1b},"minecraft:custom_name":{color:"gold",italic:false,text:"LegitiCoin"},"minecraft:lore":[{color:"gray",italic:false,text:"Collect Me!"}]}}},{text:" collected!",color:"gray"}]

$execute at @p[name=$(owner)] anchored eyes rotated ~ 0 run particle minecraft:item{item:{id:"sunflower"}} ^ ^-.5 ^ .2 .3 .2 0.2 10 normal
$execute at @p[name=$(owner)] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 2