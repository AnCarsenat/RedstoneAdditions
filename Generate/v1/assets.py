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

# Create the blocks dictionary
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


def BlockPlacerTick():
    raise NotImplementedError("BlockPlacerTick function is not implemented.")


if __name__ == "__main__":
    print("This module is not meant to be run directly.")
    # You can add test cases or other functionality here if needed.
    print(ITEMS["mineral_core"].generate_item_entity_selector())
