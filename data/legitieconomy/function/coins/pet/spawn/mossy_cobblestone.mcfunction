# Pet Code: 6
scoreboard players set @p[tag=.temp] le.petCode 6

execute store result score .temp le.petCode run random value 1..5

execute if score .temp le.petCode matches 1 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "KooriKitsune38"}]}}}}
execute if score .temp le.petCode matches 2 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "mmmmmaaaaaxxxxx"}]}}}}
execute if score .temp le.petCode matches 3 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "PolishKrowa"}]}}}}
execute if score .temp le.petCode matches 4 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "T0rston"}]}}}}
execute if score .temp le.petCode matches 5 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "Arvelyx"}]}}}}

tag @s add le.petMod
tag @s add le.Pet
scoreboard players operation @s k.UUIDs = .temp k.UUIDs