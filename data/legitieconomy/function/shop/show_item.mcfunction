execute if data entity @s data.shopData.item.components."minecraft:custom_name" run return run function legitieconomy:shop/custom_name_item with entity @s data.shopData.item

execute if data entity @s data.shopData.item.components run return run function legitieconomy:shop/components_info with entity @s data.shopData.item

$tellraw @p[tag=.temp] [{text:"Item: ",color:"yellow"},[{interpret:true,nbt:"data.shopData.item.id",color:"aqua",entity:"@s",hover_event:{action:"show_item",id:"$(id)",count:$(count)}},{text:" (Hover for info)",color:"white"}],"\n"]