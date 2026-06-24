spreadplayers 0 0 5 100 false @s

$execute at @s run tp ~ $(value) ~

execute if predicate {condition:"random_chance",chance:0.1} run tag @s add le.goldenReef
data modify entity @s[tag=le.goldenReef] Item set value {id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzEwMjBhNmUyNDYyYzBiZDQ2OWJmMTI0YjQyYzgyNmQ1YWZlMTgyZjkxMDQ3ZWYyY2NhNTdlZWU5M2NhZDkwNCJ9fX0="}]}}}

scoreboard players set @s le.Entity 1

tag @s remove .temp