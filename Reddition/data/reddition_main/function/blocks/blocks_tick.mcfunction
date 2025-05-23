# Minecraft function file
# This file was created by Reddition
# Do not edit this file manually

#block_placer
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Age:0}
execute at @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_placer] run function placeblocks:tick
#block_breaker
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s unless block ~ ~ ~ dropper run kill @s
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s if block ~ ~ ~ dropper[triggered=true] run setblock ^ ^0 ^1 air destroy
#conveyor
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.conveyor] at @s unless block ~ ~ ~ dispenser run kill @s
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]
scoreboard players reset @e[type=minecraft:armor_stand] reddition.temp
#block_rotator
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.block_rotator] at @s unless block ~ ~ ~ sticky_piston run kill @s
#exporter
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.exporter] at @s unless block ~ ~ ~ pale_oak_fence_gate run kill @s
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.exporter] at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=minecraft:armor_stand,tag=reddition.blocks.block_place.exporter] at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]
scoreboard players reset @e[type=minecraft:armor_stand] reddition.temp
