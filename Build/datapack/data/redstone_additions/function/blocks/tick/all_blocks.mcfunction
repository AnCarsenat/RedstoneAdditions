#block_placer
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Block Placer'}],"minecraft:custom_data":{"block_placer":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.block_placer', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute at @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] run function placeblocks:tick
#block_breaker
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Block Breaker'}],"minecraft:custom_data":{"block_breaker":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.block_breaker', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] if score @s redstone_additions.delay matches 19.. at @s unless block ^ ^ ^1 #air unless block ^ ^ ^1 bedrock run tag @s add triggered
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 air destroy
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] run scoreboard players set @s redstone_additions.delay 0
tag @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] remove triggered
#conveyor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_placer] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dropper","minecraft:item_name":[{'text': 'Conveyor'}],"minecraft:custom_data":{"conveyor":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.conveyor', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run function reddition:conveyor/move_item
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if data block ~ ~ ~ Items[0] store success score @s redstone_additions.temp run data modify block ^ ^ ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if score @s redstone_additions.temp matches 1 run data remove block ~ ~ ~ Items[0]
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] redstone_additions.temp
#block_rotator
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_rotator] at @s unless block ~ ~ ~ minecraft:sticky_piston run kill @e[type=item,nbt={Item:{id:"minecraft:sticky_piston",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_rotator] at @s unless block ~ ~ ~ minecraft:sticky_piston run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:sticky_piston","minecraft:item_name":[{'text': 'Rotator'}],"minecraft:custom_data":{"block_rotator":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.block_rotator', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_rotator] at @s unless block ~ ~ ~ minecraft:sticky_piston run kill @s
#exporter
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s unless block ~ ~ ~ minecraft:pale_oak_fence_gate run kill @e[type=item,nbt={Item:{id:"minecraft:pale_oak_fence_gate",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s unless block ~ ~ ~ minecraft:pale_oak_fence_gate run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:pale_oak_fence_gate","minecraft:item_name":[{'text': 'Exporter'}],"minecraft:custom_data":{"exporter":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.exporter', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s unless block ~ ~ ~ minecraft:pale_oak_fence_gate run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.exporter] redstone_additions.temp
#lava_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Lava Reactor'}],"minecraft:custom_data":{"lava_reactor":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.lava_reactor', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] if score @s redstone_additions.delay matches 99.. at @s if block ^ ^ ^1 #air run tag @s add triggered
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 lava keep
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] run scoreboard players set @s redstone_additions.delay 0
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] redstone_additions.delay
tag @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] remove triggered
#mineral_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Mineral Reactor'}],"minecraft:custom_data":{"mineral_reactor":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.mineral_reactor', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] if score @s redstone_additions.delay matches 200.. at @s if block ^ ^ ^1 #air run tag @s add triggered
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run function redstone_additions:blocks/tick/mineral_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor,tag=triggered] run scoreboard players set @s redstone_additions.delay 0
tag @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] remove triggered
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] redstone_additions.temp
#organic_reactor
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Organic Reactor'}],"minecraft:custom_data":{"organic_reactor":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.organic_reactor', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] at @s run setblock ^ ^ ^1 grass_block keep
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.organic_reactor] redstone_additions.temp
#breeder
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] at @s unless block ~ ~ ~ minecraft:dispenser run kill @e[type=item,nbt={Item:{id:"minecraft:dispenser",count:1}},sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] at @s unless block ~ ~ ~ minecraft:dispenser run summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",count:1,components:{"minecraft:item_model":"minecraft:dispenser","minecraft:item_name":[{'text': 'Breeder'}],"minecraft:custom_data":{"breeder":true},"minecraft:entity_data":{id:"item_frame",Tags:['reddition.blocks.block_place.breeder', 'reddition.blocks', 'reddition.has_cooldown']}}}}
execute as @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s
execute at @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] positioned ^ ^ ^1 run function redstone_additions:blocks/tick/breeder
scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] redstone_additions.temp
scoreboard players add @e[tag=reddition.has_cooldown] redstone_additions.delay 1
# End of block tick functions
