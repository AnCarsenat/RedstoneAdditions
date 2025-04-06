
class Component():
    pass

COMPONENTS = {
    
}

class Item():
    def __init__(self, item_id: str, name: str, components: dict = None):
        self.item_id = item_id
        self.name = name
        self.additional_components = components or {}
