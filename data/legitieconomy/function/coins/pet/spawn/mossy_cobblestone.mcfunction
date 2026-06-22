# Pet Code: 5
scoreboard players set @p[tag=.temp] le.petCode 5

execute store result score .temp le.petCode run random value 1..2

execute if score .temp le.petCode matches 1 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjJjNjkyZGFiYjkyNTRjODczYmU1ZDI4OTMzYTgxOWE2ZjUzMTZhMWU4NTdlNjM3NThiMTYxN2E3YjI5MGEzMiJ9fX0="}]}}}}
execute if score .temp le.petCode matches 2 run data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWViM2EzNjkyYzVmMWY1ZGI2Y2YxYWIxNTZkNTA2OTkxOWVmYWE5Y2UyNDU4NGQ2YTI5ZWQ3YzI4NDYyNDQ4YyJ9fX0="}]}}}}

tag @s add le.petMossyCobblestone
tag @s add le.Pet
scoreboard players operation @s k.UUIDs = .temp k.UUIDs