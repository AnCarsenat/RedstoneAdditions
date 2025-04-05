import util
import item

def create_block_breaker():
    return item.Item(
        name="block_breaker",
        model_path="minecraft:dispenser",
        display_name="Block Breaker",
        lore=["A block that breaks blocks in front of it"],
        custom_model_data=1,
        block_placement=item.BlockPlacement(
            method=item.PlaceMethod.ITEM_FRAME,
            block_type="minecraft:dropper",
            block_state={"triggered": "false"},
            armor_stand_visible=False
        )
    )

def generate_functions(block_breaker):
    output_dir = './reddition_main/function/test'
    functions = {
        'tick.mcfunction': block_breaker.generate_tick_function(),
        'block_place.mcfunction': block_breaker.generate_placement_function(),
        'give_block_breaker.mcfunction': [block_breaker.get_give_command()]
    }

    util.make_necessary_folder(f'{output_dir}/tick.mcfunction')
    util.setup_working_directory()

    for filename, commands in functions.items():
        with open(f'{output_dir}/{filename}', 'w') as f:
            f.write('\n'.join(commands))

def main():
    block_breaker = create_block_breaker()
    generate_functions(block_breaker)

if __name__ == '__main__':
    main()