spreadplayers 0 0 5 100 false @s

$execute at @s run tp ~ $(value) ~

execute if predicate {condition:"random_chance",chance:0.05} run tag @s add le.goldenPoop
data modify entity @s[tag=le.goldenPoop] Item.id set value yellow_dye

tag @s remove .temp