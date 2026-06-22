# Pet Code: 2
scoreboard players set @p[tag=.temp] le.petCode 2

data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {name: "Legitermoose", properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWU3NDJjZGFlZTQwMjVmMzAyZDIyNzc1ZWY0Nzg3MDFmNmMyYmQwN2U1MTVkMjY0YzdjNDQ5NWQ3Y2FkMmQ5NCJ9fX0="}], id: [I; -693336653, 1735151431, -1661562306, 1363978025]}}}}
tag @s add le.petLegitimoose
tag @s add le.Pet
scoreboard players operation @s k.UUIDs = .temp k.UUIDs