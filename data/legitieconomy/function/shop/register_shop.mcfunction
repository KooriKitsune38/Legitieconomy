# Check amount of shops
scoreboard players operation .temp k.UUIDs = @p[tag=.temp] k.UUIDs
execute store result score .temp Legiticoins if entity @e[type=interaction,tag=le.Shop,predicate=legitieconomy:match_uuid]
execute if score .temp Legiticoins >= .maxShopOwnership Legiticoins on target unless predicate legitiguard:staff_member run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You reached the max shop limit.",color:"red"}]

# Claim
execute store result score .temp Legiticoins run data get entity @s data.shopData.claimPrice

execute on target if score @s Legiticoins < .temp Legiticoins run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"You don't have enough Legiticoins to claim this shop!",color:"red"}]

execute on target run scoreboard players operation @s Legiticoins -= .temp Legiticoins

scoreboard players operation @s k.UUIDs = @p[tag=.temp] k.UUIDs
execute at @s run function legitieconomy:shop/register_name

#data modify storage uuid:in UUID set from entity @p[tag=.temp] UUID
#function uuid:convert
#data modify entity @s data.shopData.ownerUUID set from storage uuid:out plain

data modify entity @s CustomName set value {color: "light_purple", extra: [{color: "aqua", text: "Null"}, {color: "aqua", text: "$"}], text: "Price: "}
execute at @s run particle totem_of_undying ~ ~ ~ .2 .2 .2 0.2 20 normal
playsound entity.player.levelup player @a ~ ~ ~ 1 1.4
execute on target run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Shop Claimed! (Sneak and left click on the shop to unclaim it)",color:"green"}]