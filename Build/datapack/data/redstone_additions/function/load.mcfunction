tellraw @a ["",{"text":"\"","color":"dark_red","bold":true},{"text":"RedstoneAdditions","color":"red","bold":true},{"text":"\"","color":"dark_red","bold":true}," ",{"text":"[","color":"dark_red"},{"text":"LOADED","color":"red"},{"text":"]","color":"dark_red"},"\n",{"text":"by ","color":"dark_red"},{"text":"Ancar","color":"red"}]
function placeblocks:load

scoreboard objectives add redstone_additions.delay dummy
scoreboard objectives add redstone_additions.command_feedback dummy
scoreboard objectives add redstone_additions.temp dummy

data modify storage redstone_additions:settings.blocks BlockBreaker set value 1
data modify storage redstone_additions:settings.blocks BlockPlacer set value 1
data modify storage redstone_additions:settings.blocks LavaGenerator set value 1
data modify storage redstone_additions:settings.blocks MineralGenerator set value 1
data modify storage redstone_additions:settings.blocks Conveyor set value 1
data modify storage redstone_additions:settings.blocks Breeder set value 1