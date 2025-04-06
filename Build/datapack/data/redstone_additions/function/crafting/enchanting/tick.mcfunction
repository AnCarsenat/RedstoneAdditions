execute as @e[type=item,nbt={Item:{id:"minecraft:lava_bucket"}}] at @s if block ~ ~-1 ~ enchanting_table run tag @s add redstone_additions.lava_core_craft
execute as @e[type=item,tag=redstone_additions.lava_core_craft] at @s if block ~ ~-1 ~ enchanting_table store result score @s redstone_additions.temp run random value 1..10
execute as @e[type=item,tag=redstone_additions.lava_core_craft] if score @s redstone_additions.temp matches 1 at @s run function redstone_additions:crafting/enchanting/lava_core
kill @e[type=item,tag=redstone_additions.lava_core_craft]