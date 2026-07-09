advancement revoke @s only legitieconomy:seat

tag @s add .temp
execute as @n[type=interaction,predicate=legitieconomy:interaction] run function legitieconomy:seat/check_interaction
tag @s remove .temp