from util import Item, BlockPlace

# First define the items dictionary
ITEMS = {
    "lava_core": Item(
        name="lava_core",
        item_id="minecraft:command_block",
        item_model="minecraft:lava_bucket",
        item_name=[{"color": "red", "text": "Lava Core"}],
        block_place=None,
        additional_item_data="minecraft:enchantment_glint_override=true,minecraft:max_stack_size=1",
    ),
    "water_core": Item(
        name="water_core",
        item_id="minecraft:command_block",
        item_model="minecraft:water_bucket",
        item_name=[{"color": "blue", "text": "Water Core"}],
        block_place=None,
        additional_item_data="minecraft:enchantment_glint_override=true,minecraft:max_stack_size=1",
    ),
    "air_core": Item(
        name="air_core",
        item_id="minecraft:command_block",
        item_model="minecraft:powder_snow_bucket",
        item_name=[{"color": "white", "text": "Air Core"}],
        block_place=None,
        additional_item_data="minecraft:enchantment_glint_override=true,minecraft:max_stack_size=1",
    ),
    "earth_core": Item(
        name="earth_core",
        item_id="minecraft:command_block",
        item_model="minecraft:dirt",
        item_name=[{"color": "green", "text": "Earth Core"}],
        block_place=None,
        additional_item_data="minecraft:enchantment_glint_override=true,minecraft:max_stack_size=1",
    ),
    "mineral_core": Item(
        name="mineral_core",
        item_id="minecraft:command_block",
        item_model="minecraft:smooth_stone",
        item_name=[{"color": "gray", "text": "Mineral Core"}],
        block_place=None,
        additional_item_data="minecraft:enchantment_glint_override=true,minecraft:max_stack_size=1",
    ),
    "reactor": Item(
        name="reactor",
        item_id="minecraft:command_block",
        item_model="minecraft:exposed_copper_grate",
        item_name=[{"text": "Reactor"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.reactor",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=None,
        additional_item_data="",
    ),
}

# First create the blocks dictionary without block ticks
BLOCKS = {
    "block_placer": Item(
        name="block_placer",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Block Placer"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.block_placer",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "block_breaker": Item(
        name="block_breaker",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Block Breaker"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.block_breaker",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "conveyor": Item(
        name="conveyor",
        item_id="minecraft:item_frame",
        item_model="minecraft:dropper",
        item_name=[{"text": "Conveyor"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.conveyor",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "block_rotator": Item(
        name="block_rotator",
        item_id="minecraft:item_frame",
        item_model="minecraft:sticky_piston",
        item_name=[{"text": "Rotator"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.block_rotator",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:sticky_piston", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "exporter": Item(
        name="exporter",
        item_id="minecraft:item_frame",
        item_model="minecraft:pale_oak_fence_gate",
        item_name=[{"text": "Exporter"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.exporter",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:pale_oak_fence_gate", facing_type=BlockPlace.FacingTypes.LINK
        ),
        additional_item_data="",
    ),
    "lava_reactor": Item(
        name="lava_reactor",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Lava Reactor"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.lava_reactor",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "mineral_reactor": Item(
        name="mineral_reactor",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Mineral Reactor"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.mineral_reactor",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "organic_reactor": Item(
        name="organic_reactor",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Organic Reactor"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.organic_reactor",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
    "breeder": Item(
        name="breeder",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name=[{"text": "Breeder"}],
        entity_data={"id": "item_frame"},
        entity_tags=[
            "reddition.blocks.block_place.breeder",
            "reddition.blocks",
            "reddition.has_cooldown",
        ],
        block_place=BlockPlace(
            block="minecraft:dispenser", facing_type=BlockPlace.FacingTypes.ALL
        ),
        additional_item_data="",
    ),
}

# Now create the block ticks
block_placer_block_tick = BlockPlace.blockTickMcfunction(
    name="block_placer",
    commands=[
        f"execute as {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_placer'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['block_placer'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_placer'].block_place.block} run {BLOCKS['block_placer'].generate_item_summon_command()}",
        f"execute as {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_placer'].block_place.block} run kill @s",
        f"execute at {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} run function placeblocks:tick",
    ],
)

block_breaker_block_tick = BlockPlace.blockTickMcfunction(
    name="block_breaker",
    commands=[
        f"execute as {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_placer'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['block_placer'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['block_breaker'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_breaker'].block_place.block} run {BLOCKS['block_breaker'].generate_item_summon_command()}",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] if score @s redstone_additions.delay matches 19.. at @s unless block ^ ^ ^1 #air unless block ^ ^ ^1 bedrock run tag @s add triggered",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 air destroy",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker,tag=triggered] run scoreboard players set @s redstone_additions.delay 0",
        f"tag @e[type=armor_stand,tag=reddition.blocks.block_place.block_breaker] remove triggered",
    ],
)

conveyor_block_tick = BlockPlace.blockTickMcfunction(
    name="conveyor",
    commands=[
        f"execute as {BLOCKS['block_placer'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_placer'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['block_placer'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        # Remove conveyor if minecraft:dispenser is broken
        f"execute as {BLOCKS['conveyor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['conveyor'].block_place.block} run {BLOCKS['conveyor'].generate_item_summon_command()}",
        f"execute as {BLOCKS['conveyor'].generate_child_entities_selector_from_id('armor_stand')} at @s unless block ~ ~ ~ minecraft:dispenser run kill @s",
        # Only activate when minecraft:dispenser is powered
        "execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run function reddition:conveyor/move_item",
        # When the conveyor activates:
        # 1. Try to move first item from minecraft:dispenser to next block
        "execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if data block ~ ~ ~ Items[0] store success score @s redstone_additions.temp run data modify block ^ ^ ^1 Items append from block ~ ~ ~ Items[0]",
        # 2. If successful (temp=1), remove the item from source minecraft:dispenser
        "execute as @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] at @s if score @s redstone_additions.temp matches 1 run data remove block ~ ~ ~ Items[0]",
        # Reset temp score
        "scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.conveyor] redstone_additions.temp",
    ],
)

block_rotator_block_tick = BlockPlace.blockTickMcfunction(
    name="block_rotator",
    commands=[
        f"execute as {BLOCKS['block_rotator'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_rotator'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['block_rotator'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['block_rotator'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_rotator'].block_place.block} run {BLOCKS['block_rotator'].generate_item_summon_command()}",
        f"execute as {BLOCKS['block_rotator'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['block_rotator'].block_place.block} run kill @s",
    ],
)

exporter_block_tick = BlockPlace.blockTickMcfunction(
    name="exporter",
    commands=[
        f"execute as {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['exporter'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['exporter'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['exporter'].block_place.block} run {BLOCKS['exporter'].generate_item_summon_command()}",
        f"execute as {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['exporter'].block_place.block} run kill @s",
        f"execute as {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]",
        f"execute as {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]",
        f"scoreboard players reset {BLOCKS['exporter'].generate_child_entities_selector_from_id("armor_stand")} redstone_additions.temp",
    ],
)

lava_reactor_block_tick = BlockPlace.blockTickMcfunction(
    name="lava_reactor",
    commands=[
        f"execute as {BLOCKS['lava_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['lava_reactor'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['lava_reactor'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['lava_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['lava_reactor'].block_place.block} run {BLOCKS['lava_reactor'].generate_item_summon_command()}",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor] if score @s redstone_additions.delay matches 99.. at @s if block ^ ^ ^1 #air run tag @s add triggered",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run setblock ^ ^0 ^1 lava keep",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] run scoreboard players set @s redstone_additions.delay 0",
        f"scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] redstone_additions.delay",
        f"tag @e[type=armor_stand,tag=reddition.blocks.block_place.lava_reactor,tag=triggered] remove triggered",
    ],
)
mineral_reactor_block_tick = BlockPlace.blockTickMcfunction(
    name="mineral_reactor",
    commands=[
        f"execute as {BLOCKS['mineral_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['mineral_reactor'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['mineral_reactor'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['mineral_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['mineral_reactor'].block_place.block} run {BLOCKS['mineral_reactor'].generate_item_summon_command()}",
        f"execute as {BLOCKS['mineral_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['mineral_reactor'].block_place.block} run kill @s",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] if score @s redstone_additions.delay matches 200.. at @s if block ^ ^ ^1 #air run tag @s add triggered",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor,tag=triggered] at @s if block ~ ~ ~ minecraft:dispenser[triggered=true] run function redstone_additions:blocks/tick/mineral_reactor",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor,tag=triggered] run scoreboard players set @s redstone_additions.delay 0",
        f"tag @e[type=armor_stand,tag=reddition.blocks.block_place.mineral_reactor] remove triggered",
        f"scoreboard players reset {BLOCKS['mineral_reactor'].generate_child_entities_selector_from_id("armor_stand")} redstone_additions.temp",
    ],
)

organic_reactor_block_tick = BlockPlace.blockTickMcfunction(
    name="organic_reactor",
    commands=[
        f"execute as {BLOCKS['organic_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['organic_reactor'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['organic_reactor'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as {BLOCKS['organic_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['organic_reactor'].block_place.block} run {BLOCKS['organic_reactor'].generate_item_summon_command()}",
        f"execute as {BLOCKS['organic_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['organic_reactor'].block_place.block} run kill @s",
        f"execute as {BLOCKS['organic_reactor'].generate_child_entities_selector_from_id("armor_stand")} at @s run setblock ^ ^ ^1 grass_block keep",
        f"scoreboard players reset {BLOCKS['organic_reactor'].generate_child_entities_selector_from_id("armor_stand")} redstone_additions.temp",
    ],
)

breeder_block_tick = BlockPlace.blockTickMcfunction(
    name="breeder",
    commands=[
        f"execute as {BLOCKS['breeder'].generate_child_entities_selector_from_id("armor_stand")} at @s unless block ~ ~ ~ {BLOCKS['breeder'].block_place.block} run kill @e[type=item,nbt={{Item:{{id:\"{BLOCKS['breeder'].block_place.block}\",count:1}}}},sort=nearest,limit=1]",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] at @s unless block ~ ~ ~ minecraft:dispenser run {BLOCKS['breeder'].generate_item_summon_command()}",
        f"execute as @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] at @s unless block ~ ~ ~ minecraft:dispenser run kill @s",
        f"execute at @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] positioned ^ ^ ^1 run function redstone_additions:blocks/tick/breeder",
        f"scoreboard players reset @e[type=armor_stand,tag=reddition.blocks.block_place.breeder] redstone_additions.temp",
    ],
)

# Now assign the block ticks to their respective blocks
BLOCKS["block_placer"].block_place.block_tick = block_placer_block_tick
BLOCKS["block_breaker"].block_place.block_tick = block_breaker_block_tick
BLOCKS["conveyor"].block_place.block_tick = conveyor_block_tick
BLOCKS["block_rotator"].block_place.block_tick = block_rotator_block_tick
BLOCKS["exporter"].block_place.block_tick = exporter_block_tick
BLOCKS["lava_reactor"].block_place.block_tick = lava_reactor_block_tick
BLOCKS["mineral_reactor"].block_place.block_tick = mineral_reactor_block_tick
BLOCKS["organic_reactor"].block_place.block_tick = organic_reactor_block_tick
BLOCKS["breeder"].block_place.block_tick = breeder_block_tick


def BlockPlacerTick():
    raise NotImplementedError("BlockPlacerTick function is not implemented.")


if __name__ == "__main__":
    print("This module is not meant to be run directly.")
    # You can add test cases or other functionality here if needed.
    print(ITEMS["mineral_core"].generate_item_entity_selector())

    # FIX N1

    # execute as @e[type=armorèstand,tag=bhzql] at @s run kill @e[type=item,nbt={id:"minecraft:dipenser"}]
