execute on attacker run scoreboard players enable @s confirm
execute on attacker unless score @s confirm matches 1.. run return run tellraw @s [{text:"| ",color:"dark_gray"},{text:"Trigger \"confirm\" if you're sure, then left click again.",color:"aqua"}]

function legitieconomy:shop/remove_item
scoreboard players reset @s k.UUIDs
data remove entity @s data.shopData.owner
data remove entity @s data.shopData.command
data modify entity @s CustomName set value [{text:"Claim: ",color:"light_purple"},{text:"1",color:"aqua"},{text:"$",color:"aqua"}]
data modify entity @s CustomName.extra[0].text set string entity @s data.shopData.claimPrice

playsound entity.player.levelup player @a ~ ~ ~ 1 1.8
tellraw @p[tag=.temp] [{text:"| ",color:"dark_gray"},{text:"Shop unclaimed successfully!",color:"aqua"}]

scoreboard players reset @p[tag=.temp] confirm