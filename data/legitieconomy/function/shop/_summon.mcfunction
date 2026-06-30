$execute align xyz run summon interaction ~.5 ~-0.025 ~.5 {width:1.05f,height:-1f,Tags:["le.Shop"],data:{shopData:{claimPrice:$(price)}},response:true,CustomNameVisible:false,CustomName:[{text:"Claim: ",color:"green"},{text:"$(price)",color:"aqua"},{text:"$",color:"aqua"}]}
execute align xyz run tp ~.5 ~-0.025 ~.5
execute at @s run data modify entity @n[type=interaction,tag=le.Shop,distance=..0.1] height set value 1.075f
execute at @s run scoreboard players set @n[type=interaction,tag=le.Shop,distance=..0.1] le.Entity 1
execute at @s run summon item_display ~ ~ ~ {Tags:["le.shopItem"],item_display:"fixed",teleport_duration:1,billboard:vertical,item:{id:"air",count:1}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.5f, 0.0f]}}
execute at @s run ride @n[type=item_display,tag=le.shopItem,distance=..0.1] mount @n[type=interaction,tag=le.Shop,distance=..0.1]