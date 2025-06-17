import json
import os
from PIL import Image, ImageDraw
import requests
from io import BytesIO

class MinecraftRecipeRenderer:
    def __init__(self, texture_path="textures"):
        self.texture_path = texture_path
        self.item_size = 32
        self.grid_size = 3
        self.padding = 4
        
    def download_texture(self, item_name):
        """Download item texture from Minecraft wiki or assets"""
        # Simplified - you'd need actual texture URLs or local textures
        texture_url = f"https://minecraft.wiki/images/thumb/{item_name.replace(':', '_')}.png/32px-{item_name.replace(':', '_')}.png"
        try:
            response = requests.get(texture_url, timeout=5)
            if response.status_code == 200:
                return Image.open(BytesIO(response.content))
        except:
            pass
        
        # Return placeholder if texture not found
        img = Image.new('RGBA', (32, 32), (128, 128, 128, 255))
        return img
    
    def get_item_texture(self, item_name):
        """Get texture for an item"""
        if not item_name or item_name == "minecraft:air":
            return Image.new('RGBA', (self.item_size, self.item_size), (0, 0, 0, 0))
        
        # Try to load from local cache first
        cache_path = os.path.join(self.texture_path, f"{item_name.replace(':', '_')}.png")
        if os.path.exists(cache_path):
            return Image.open(cache_path).resize((self.item_size, self.item_size))
        
        # Download and cache
        texture = self.download_texture(item_name)
        os.makedirs(self.texture_path, exist_ok=True)
        texture.save(cache_path)
        return texture.resize((self.item_size, self.item_size))
    
    def render_recipe(self, recipe_data):
        """Render a single recipe to an image"""
        # Calculate image dimensions
        total_width = (self.grid_size * self.item_size) + ((self.grid_size + 1) * self.padding) + 100
        total_height = self.item_size + (2 * self.padding) + 40
        
        # Create image
        img = Image.new('RGBA', (total_width, total_height), (240, 240, 240, 255))
        
        # Parse recipe pattern
        pattern = recipe_data.get('pattern', ['   ', '   ', '   '])
        key = recipe_data.get('key', {})
        result = recipe_data.get('result', {})
        
        # Draw crafting grid
        for row in range(3):
            for col in range(3):
                x = self.padding + (col * (self.item_size + self.padding))
                y = self.padding + (row * (self.item_size + self.padding))
                
                # Get item from pattern
                if row < len(pattern) and col < len(pattern[row]):
                    pattern_char = pattern[row][col]
                    if pattern_char in key:
                        item = key[pattern_char]
                        if isinstance(item, dict):
                            item_name = item.get('item', '')
                        else:
                            item_name = item
                        
                        texture = self.get_item_texture(item_name)
                        img.paste(texture, (x, y), texture)
                
                # Draw grid border
                draw = ImageDraw.Draw(img)
                draw.rectangle([x-1, y-1, x+self.item_size, y+self.item_size], outline=(128, 128, 128))
        
        # Draw arrow
        arrow_x = (3 * (self.item_size + self.padding)) + self.padding + 10
        arrow_y = self.padding + self.item_size
        draw = ImageDraw.Draw(img)
        draw.polygon([(arrow_x, arrow_y), (arrow_x+20, arrow_y-10), (arrow_x+20, arrow_y+10)], fill=(64, 64, 64))
        
        # Draw result
        result_x = arrow_x + 40
        result_y = self.padding
        if isinstance(result, dict):
            result_item = result.get('item', '')
            result_texture = self.get_item_texture(result_item)
            img.paste(result_texture, (result_x, result_y), result_texture)
            
            # Draw result border
            draw.rectangle([result_x-1, result_y-1, result_x+self.item_size, result_y+self.item_size], outline=(128, 128, 128))
        
        return img
    
    def process_recipe_file(self, recipe_file, output_path="recipe_output.png"):
        """Process a recipe JSON file and create image"""
        with open(recipe_file, 'r') as f:
            recipe_data = json.load(f)
        
        img = self.render_recipe(recipe_data)
        img.save(output_path)
        print(f"Recipe image saved to: {output_path}")
        return img

# Usage example
if __name__ == "__main__":
    renderer = MinecraftRecipeRenderer()
    
    # Example recipe file path
    recipe_file = "Build/datapack/data/redstone_additions/recipe/crafting_ingredients/reactor.json"
    
    if os.path.exists(recipe_file):
        renderer.process_recipe_file(recipe_file, "recipe_image.png")
    else:
        print(f"Recipe file '{recipe_file}' not found")
        
        # Create example recipe for testing
        example_recipe = {
            "type": "minecraft:crafting_shaped",
            "pattern": [
                "XXX",
                "X X",
                "XXX"
            ],
            "key": {
                "X": {
                    "item": "minecraft:cobblestone"
                }
            },
            "result": {
                "item": "minecraft:furnace"
            }
        }
        
        with open("example_recipe.json", 'w') as f:
            json.dump(example_recipe, f, indent=2)
        
        renderer.process_recipe_file("example_recipe.json", "example_recipe.png")