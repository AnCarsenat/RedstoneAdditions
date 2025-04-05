from util import Item, BlockPlace, FacingTypes

ITEMS = {}

BLOCKS = {
    "block_placer": Item(
        name="block_placer",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name='[{"text":"block_placer"}]',
        entity_data={"id": "item_frame"},
        entity_tags=["reddition.blocks.block_place.block_placer"],
        block_place=BlockPlace(block="dispenser", facing_type=FacingTypes.ALL),
        additional_item_data="",
    ),
    "block_breaker": Item(
        name="block_breaker",
        item_id="minecraft:item_frame",
        item_model="minecraft:dispenser",
        item_name='[{"text":"block_breaker"}]',
        entity_data={"id": "item_frame"},
        entity_tags=["reddition.blocks.block_place.block_breaker"],
        block_place=BlockPlace(block="dropper", facing_type=FacingTypes.ALL),
        additional_item_data="",
    ),
    "conveyor": Item(
        name="conveyor",
        item_id="minecraft:item_frame",
        item_model="minecraft:dropper",
        item_name='[{"text":"conveyor"}]',
        entity_data={"id": "item_frame"},
        entity_tags=["reddition.blocks.block_place.conveyor"],
        block_place=BlockPlace(block="dispenser", facing_type=FacingTypes.ALL),
        additional_item_data="",
    ),
    "block_rotator": Item(
        name="block_rotator",
        item_id="minecraft:item_frame",
        item_model="minecraft:sticky_piston",
        item_name='[{"text":"block_rotator"}]',
        entity_data={"id": "item_frame"},
        entity_tags=["reddition.blocks.block_place.block_rotator"],
        block_place=BlockPlace(block="sticky_piston", facing_type=FacingTypes.ALL),
        additional_item_data="",
    ),
    "exporter": Item(
        name="exporter",
        item_id="minecraft:item_frame",
        item_model="minecraft:pale_oak_fence_gate",
        item_name='[{"text":"exporter"}]',
        entity_data={"id": "item_frame"},
        entity_tags=["reddition.blocks.block_place.exporter"],
        block_place=BlockPlace(block="pale_oak_fence_gate", facing_type=FacingTypes.LINK),
        additional_item_data="",
    ),
}


def BlockPlacerTick():
    raise NotImplementedError("BlockPlacerTick function is not implemented.")
