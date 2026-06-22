# Pet Code: 3
scoreboard players set @p[tag=.temp] le.petCode 3

data merge entity @s {teleport_duration:4,billboard:"fixed",transformation:{left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.6875f, 0.6875f], translation: [0.0f, 0.172f, 0.0f]},item:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile": {name: "RageMold7200", properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzkxZDVmZWZiOTI4MjJhYmMyY2I0YTViMGI0NDYwZjViNzIxMmIyMWJlYzc2NTJjNjU0YzU1OTlkNTM4MzZkYiJ9fX0="}]}}}}
tag @s add le.petRagemold
tag @s add le.Pet
scoreboard players operation @s k.UUIDs = .temp k.UUIDs