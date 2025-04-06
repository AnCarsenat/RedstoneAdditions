import os
import shutil
from assets import BLOCKS, ITEMS
from util import *

DEVMODE = False

def clear_function_folder():
    function_dir = BUILD_DATAPACK_PATH+"/function"
    # Keep these files
    protected_files = ['tick.mcfunction', 'load.mcfunction']
    
    # Remove everything except protected files
    for root, dirs, files in os.walk(function_dir, topdown=False):
        for name in files:
            if name not in protected_files:
                os.remove(os.path.join(root, name))
        for name in dirs:
            shutil.rmtree(os.path.join(root, name))

# def create_folder_structure():
#     base_dir = BUILD_DATAPACK_PATH+"/functions"
#     folders = [
#         "blocks/place",
#         "blocks/tick",
#         "items"
#     ]
    
#     for folder in folders:
#         os.makedirs(os.path.join(base_dir, folder), exist_ok=True)

def generate_block_place():
    blocks_mcfunction = Mcfunction(
        BUILD_DATAPACK_PATH+r"/data/redstone_additions/function/blocks/place/all_blocks.mcfunction"
    )
    blocks_mcfunction.clear_file()

    for block_name, block_data in BLOCKS.items():
        print(f"Generate [BLOCK_PLACE] ({block_name}) blocks {list(BLOCKS.keys()).index(block_name) + 1} out of {len(BLOCKS)}")
        
        blocks_mcfunction.write_line("#" + block_name)
        
        for facing_id, facing_dir in block_data.block_place.facing_type.items():
            item_frame_selector = block_data.generate_child_entities_selector()
            blocks_mcfunction.write(f"execute as {item_frame_selector} if entity @s[nbt={{Facing:{facing_id}b}}] ")
            blocks_mcfunction.write_line(
                f"at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {{NoGravity:1b,Invisible:{not DEVMODE},Marker:{not DEVMODE},"
                f"Tags:{block_data.entity_tags},Rotation:[{180 if facing_dir=='north' else 0 if facing_dir=='south' else -90 if facing_dir=='east' else 90 if facing_dir=='west' else 0}f,"
                f"{-90 if facing_dir=='up' else 90 if facing_dir=='down' else 0}f]}}")
            blocks_mcfunction.write(f"execute as {item_frame_selector} if entity @s[nbt={{Facing:{facing_id}b}}] ")
            blocks_mcfunction.write_line(f"as @e[type=minecraft:armor_stand,tag={block_data.entity_tags[0]}] at @s run setblock ~ ~ ~ {block_data.block_place.block}[facing={facing_dir}] keep")
            blocks_mcfunction.write_line(f"execute as {item_frame_selector} if entity @s[nbt={{Facing:{facing_id}b}}] run kill @s")

    blocks_mcfunction.close()

def generate_block_tick():
    blocks_mcfunction = Mcfunction(
        BUILD_DATAPACK_PATH+r"/data/redstone_additions/function/blocks/tick/all_blocks.mcfunction"
    )
    blocks_mcfunction.clear_file()

    # Add your block tick functions here
    for block_name, block_data in BLOCKS.items():
        print(f"Generate [BLOCK_TICK] ({block_name}) blocks {list(BLOCKS.keys()).index(block_name) + 1} out of {len(BLOCKS)}")
        
        blocks_mcfunction.write_line("#" + block_name)
        

        # print(block_data.block_place)
        # Only generate tick function if block has one defined
        if hasattr(block_data, 'block_place') and block_data.block_place and hasattr(block_data.block_place, 'blockTickMcfunction') and block_data.block_place.blockTickMcfunction:
            blocks_mcfunction.write_lines(block_data.block_place.block_tick.commands)


    blocks_mcfunction.write_line("scoreboard players add @e[tag=reddition.has_cooldown] redstone_additions.delay 1")
    blocks_mcfunction.write_line("# End of block tick functions")


    blocks_mcfunction.close()
    print("Generate [BLOCK_TICK] ENDED SUCCESSFULLY")

def generate_item_gives():
    items_mcfunction = Mcfunction(
        BUILD_DATAPACK_PATH+r"/data/redstone_additions/function/items/give_all.mcfunction"
    )
    items_mcfunction.clear_file()

    # Generate block items
    for block_name, block_data in BLOCKS.items():
        print(f"Generate [GIVE] ({block_name}) blocks {list(BLOCKS.keys()).index(block_name) + 1} out of {len(BLOCKS)}")
        items_mcfunction.write_line(block_data.generate_give_command())

    # Generate regular items
    for item_name, item_data in ITEMS.items():
        print(f"Generate [GIVE] ({item_name}) items {list(ITEMS.keys()).index(item_name) + 1} out of {len(ITEMS)}")
        items_mcfunction.write_line(item_data.generate_give_command())

    items_mcfunction.close()

def main():
    setup_working_directory()
    # clear_function_folder()
    #create_folder_structure()
    generate_block_place()
    generate_block_tick()
    generate_item_gives()

if __name__ == "__main__":
    main()
