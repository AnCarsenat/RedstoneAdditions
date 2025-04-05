from classic.assets import *
from util import *

DEVMODE = True

setup_working_directory()

# My_New_Block = Item(
#     name="My_New_Block",
#     item_id="minecraft:item_frame",
#     item_model="minecraft:furnace",
#     item_name='[{"text":"My New Block"}]',
#     additional_item_data="glider={}",
#     entity_data={"id": "item_frame"},
#     entity_tags=["reddition.blocks.block_place.My_New_Block"],
# )
# print(My_New_Block.generate_give_command())
# print(My_New_Block.generate_child_entities_selector())
# print(My_New_Block.generate_is_holding_item())

# exit()


def generate_block_items_commands():
    block_items_mcfunction = Mcfunction(
        r"Reddition/data/reddition_main/function/items/give_blocks.mcfunction"
    )
    block_items_mcfunction.clear_file()

    for block_item_name, block_item_data in BLOCKS.items():
        print(
            f"Generate [GIVE] ({block_item_name}) blocks {list(BLOCKS.keys()).index(block_item_name) + 1} out of {len(BLOCKS)}"
        )
        block_items_mcfunction.write_line(block_item_data.generate_give_command())

    block_items_mcfunction.close()


def generate_items_commands():
    items_mcfunction = Mcfunction(
        r"Reddition/data/reddition_main/function/items/give_items.mcfunction"
    )
    items_mcfunction.clear_file()

    for (item_name,item_data) in ITEMS.items():
        print(
            f"Generate [GIVE] ({item_name}) items {list(ITEMS.keys()).index(item_name) + 1} out of {len(ITEMS)}"
        )
        items_mcfunction.write_line(item_data.generate_give_command())

    items_mcfunction.close()


def generate_block_place():

    blocks_mcfunction = Mcfunction(
        r"Reddition/data/reddition_main/function/blocks/blocks_place.mcfunction"
    )

    for (block_name, block_data) in BLOCKS.items():
        print(
            f"Generate [BLOCK_PLACE] ({block_name}) blocks {list(BLOCKS.keys()).index(block_name) + 1} out of {len(BLOCKS)}"
        )

        def place_self(facing, block_name):
            blocks_mcfunction.write_line(f"at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {{NoGravity:1b,Invisible:{not DEVMODE},Tags:[\"{block_data.entity_tags[0]}\"],Rotation:[{180 if facing=='north' else 0 if facing=='south' else -90 if facing=='east' else 90 if facing=='west' else 0}f,{-90 if facing=='up' else 90 if facing=='down' else 0}f]}}")
            blocks_mcfunction.write_line(f"execute as @e[type=minecraft:armor_stand,tag={block_data.entity_tags[0]}] at @s run setblock ~ ~ ~ {block_name}[facing={facing}] keep")

        blocks_mcfunction.write_line("#" + block_name)

        for facing_id, facing_dir in block_data.block_place.facing_type.items():
            item_frame_selector= block_data.generate_child_entities_selector()
            # blocks_mcfunction.write_line("#" + block_name + f" block place facing {facing_dir}")
            blocks_mcfunction.write(f"execute as {item_frame_selector} if entity @s[nbt={{Facing:{facing_id}b}}] ")
            place_self(facing_dir, block_data.block_place.block)
            blocks_mcfunction.write_line(f"execute as {item_frame_selector} if entity @s[nbt={{Facing:{facing_id}b}}] run kill @s")

    blocks_mcfunction.close()
def generate_block_tick():
    blocks_mcfunction = Mcfunction(
        r"Reddition/data/reddition_main/function/blocks/blocks_tick.mcfunction"
    )

    print("Generate [BLOCK_TICK] ENDED SUCCESSFULLY")

    def block_placer():
        block_data = BLOCKS["block_placer"]

        blocks_mcfunction.write_line("#" + "block_placer")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        blocks_mcfunction.write_line(f"execute at {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} run function placeblocks:tick")

    def block_breaker():
        block_data = BLOCKS["block_breaker"]

        blocks_mcfunction.write_line("#" + "block_breaker")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if block ~ ~ ~ {block_data.block_place.block}[triggered=true] run setblock ^ ^0 ^1 air destroy")

    def conveyor():
        block_data = BLOCKS["conveyor"]

        blocks_mcfunction.write_line("#" + "conveyor")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        # Move items from current block to block in front
        # Try to move item, storing success in a score
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]")
        # Only remove the item if the move was successful (score=1)
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]")
        blocks_mcfunction.write_line("scoreboard players reset @e[type=minecraft:armor_stand] reddition.temp")


    def block_rotator():
        block_data = BLOCKS["block_rotator"]
        blocks_mcfunction.write_line("#" + "block_rotator")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        # Get current facing from NBT and rotate it by 90 degrees
        # blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if block ^ ^0 ^1 minecraft:observer[facing=north] run setblock ^ ^0 ^1 minecraft:observer[facing=east]")
        # blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if block ^ ^0 ^1 minecraft:observer[facing=east] run setblock ^ ^0 ^1 minecraft:observer[facing=south]")
        # blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if block ^ ^0 ^1 minecraft:observer[facing=south] run setblock ^ ^0 ^1 minecraft:observer[facing=west]") 
        # blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if block ^ ^0 ^1 minecraft:observer[facing=west] run setblock ^ ^0 ^1 minecraft:observer[facing=north]")

    def exporter():
        block_data = BLOCKS["exporter"]
        blocks_mcfunction.write_line("#" + "exporter")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        # Move items from current block to block in front
        # Try to move item, storing success in a score
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if data block ~ ~ ~ Items[0] store success score @s reddition.temp run data modify block ^ ^0 ^1 Items append from block ~ ~ ~ Items[0]")
        # Only remove the item if the move was successful (score=1)
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]")
        blocks_mcfunction.write_line("scoreboard players reset @e[type=minecraft:armor_stand] reddition.temp")

    def generator():
        block_data = BLOCKS["generator"]
        blocks_mcfunction.write_line("#" + "generator")
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s unless block ~ ~ ~ {block_data.block_place.block} run kill @s")
        # Move items from current block to block in front
        # Try to move item, storing success in a score
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if data block ~ ~ ~ Items[0]")
        # Only remove the item if the move was successful (score=1)
        blocks_mcfunction.write_line(f"execute as {block_data.generate_child_entities_selector_from_id('minecraft:armor_stand')} at @s if score @s reddition.temp matches 1 run data remove block ~ ~ ~ Items[0]")
        blocks_mcfunction.write_line("scoreboard players reset @e[type=minecraft:armor_stand] reddition.temp")

    block_placer()
    block_breaker()
    conveyor()
    block_rotator()
    exporter()
    generator()

    blocks_mcfunction.close()

def main():
    generate_block_items_commands()
    generate_block_place()
    generate_block_tick()

if __name__ == "__main__":
    main()
