advancement revoke @s only legitieconomy:clicked_shop
advancement revoke @s only legitieconomy:lclicked_shop

execute if entity @s[tag=le.cantShop] run return fail

playsound ui.button.click player @s ~ ~ ~ 1 1.6

tag @s add le.cantShop

tag @s add .temp
execute as @n[type=interaction,predicate=legitieconomy:valid_shop] run function legitieconomy:shop/parse_information
execute as @e[type=interaction,predicate=legitieconomy:valid_shop,tag=.temp] run function legitieconomy:shop/clear_interaction
tag @s remove .temp