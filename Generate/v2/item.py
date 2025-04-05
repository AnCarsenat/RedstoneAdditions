from enum import Enum
from dataclasses import dataclass
from typing import Dict, Optional, List

class PlaceMethod(Enum):
    ITEM_FRAME = "item_frame"
    SPAWN_EGG = "spawn_egg"
    NONE = "none"

class Direction(Enum):
    NORTH = ("north", 2, 180.0)
    SOUTH = ("south", 3, 0.0)
    WEST = ("west", 4, 90.0)
    EAST = ("east", 5, -90.0)

    def __init__(self, minecraft_dir: str, item_frame_facing: int, rotation: float):
        self.minecraft_dir = minecraft_dir
        self.item_frame_facing = item_frame_facing
        self.rotation = rotation

@dataclass
class BlockPlacement:
    method: PlaceMethod
    block_type: str
    block_state: Dict[str, str]
    armor_stand_visible: bool = False

@dataclass
class Item:
    name: str
    model_path: str
    display_name: str
    lore: List[str]
    custom_model_data: int
    block_placement: Optional[BlockPlacement] = None
    
    def get_give_command(self, target: str = "@p") -> str:
        base_item = "minecraft:item_frame" if self.block_placement and self.block_placement.method == PlaceMethod.ITEM_FRAME else "minecraft:spawn_egg"
        
        nbt = {
            "display": {
                "Name": f'{{"text":"{self.display_name}","italic":false}}',
                "Lore": [f'{{"text":"{line}","italic":false}}' for line in self.lore]
            },
            "CustomModelData": self.custom_model_data,
            "Tags": [f"reddition.blocks.{self.name}"]
        }
        
        return f"give {target} {base_item}{nbt}"

    def generate_placement_function(self) -> List[str]:
        if not self.block_placement:
            return []

        commands = []
        tag = f"reddition.blocks.block_place.{self.name}"

        for direction in Direction:
            if self.block_placement.method == PlaceMethod.ITEM_FRAME:
                # Summon armor stand and set block for each direction
                commands.extend([
                    f"execute as @e[type=minecraft:item_frame,nbt={{Tags:['{tag}']}}] if entity @s[nbt={{Facing:{direction.item_frame_facing}b}}] "
                    f"at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {{NoGravity:1b,Invisible:{str(not self.block_placement.armor_stand_visible).lower()},"
                    f"Tags:['{tag}'],Rotation:[{direction.rotation}f,0f]}}",
                    
                    f"execute as @e[type=minecraft:armor_stand,tag={tag}] at @s run "
                    f"setblock ~ ~ ~ {self.block_placement.block_type}[facing={direction.minecraft_dir}] keep",
                    
                    f"execute as @e[type=minecraft:item_frame,nbt={{Tags:['{tag}']}}] if entity @s[nbt={{Facing:{direction.item_frame_facing}b}}] run kill @s"
                ])

        return commands

    def generate_tick_function(self) -> List[str]:
        if not self.block_placement:
            return []

        tag = f"reddition.blocks.block_place.{self.name}"
        return [
            f"execute as @e[type=minecraft:armor_stand,tag={tag}] at @s unless block ~ ~ ~ {self.block_placement.block_type} run kill @s"
        ]