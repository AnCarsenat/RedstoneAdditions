#block_placer
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ dispenser run kill @s
execute at @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] run function placeblocks:tick
#block_breaker
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] if score @s redstone_additions.delay matches 19.. at @s unless block ^ ^ ^1 #air run tag @s add triggered
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 air destroy
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] run scoreboard players set @s redstone_additions.delay 0
tag @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] remove triggered
#conveyor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]
#block_rotator
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_rotator] at @s unless block ~ ~ ~ sticky_piston run kill @s
#exporter
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s unless block ~ ~ ~ pale_oak_fence_gate run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] redstone_additions.temp
#lava_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] if score @s redstone_additions.delay matches 99.. at @s if block ^ ^ ^1 #air run tag @s add triggered
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 lava keep
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] run scoreboard players set @s redstone_additions.delay 0
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] redstone_additions.delay
tag @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] remove triggered
#mineral_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] at @s run setblock ^ ^ ^1 stone keep
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] redstone_additions.temp
#organic_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s run setblock ^ ^ ^1 grass_block keep
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] redstone_additions.temp
scoreboard players add @e[tag=reddition.has_cooldown] redstone_additions.delay 1
# End of block tick functions
