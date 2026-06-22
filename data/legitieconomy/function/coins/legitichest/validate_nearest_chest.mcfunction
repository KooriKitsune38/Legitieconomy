scoreboard players set @n[type=item_display,tag=k.treasureChest,predicate=legitieconomy:treasure_chest/invalid,distance=..16] le.gadgetEntity 1

tellraw @s [{text:"| ",color:"gray"},{text:"Chest validated",color:"aqua"}]
playsound block.note_block.bit master @a ~ ~ ~ 1 1.6

execute if entity @s[advancements={legitieconomy:can_validate_chest=true}] run return run advancement revoke @s only legitieconomy:can_validate_chest

function legitieconomy:coins/legitichest/rotation_schedule

tp @s @n[type=item_display,tag=k.treasureChest,predicate=legitieconomy:treasure_chest/invalid]

execute at @s run playsound block.note_block.bit master @s ~ ~ ~ 1 1.6