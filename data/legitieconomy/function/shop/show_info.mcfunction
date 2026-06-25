execute if entity @p[tag=.temp,predicate=legitieconomy:match_uuid,predicate=legitieconomy:sneaking] run return run function legitieconomy:shop/unclaim

tellraw @p[tag=.temp] [{text:"__/--",color:"dark_gray"},{text:"LegitiShop",color:"gold"},{text:"--\\__",color:"dark_gray"}]

data modify entity @s data.shopData.item.custom_name set from entity @s data.shopData.item.components."minecraft:custom_name"
function legitieconomy:shop/show_item with entity @s data.shopData.item

tellraw @p[tag=.temp] [{text:"Amount Stored: ",color:"yellow"},{nbt:"data.shopData.item.count",entity:"@s",color:"aqua"},"\n"]
tellraw @p[tag=.temp] [{text:"Price: ",color:"yellow"},{nbt:"data.shopData.price",entity:"@s",color:"aqua"},{text:"$",color:"aqua"},"\n"]
tellraw @p[tag=.temp] [{text:"Owner: ",color:"yellow"},{nbt:"data.shopData.owner",entity:"@s",color:"aqua"}]

tellraw @p[tag=.temp] {text:"-------------------",color:"dark_gray"}