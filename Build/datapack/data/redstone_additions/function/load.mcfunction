tellraw @a ["",{"text":"\"","color":"dark_red","bold":true},{"text":"RedstoneAdditions","color":"red","bold":true},{"text":"\"","color":"dark_red","bold":true}," ",{"text":"[","color":"dark_red"},{"text":"LOADED","color":"red"},{"text":"]","color":"dark_red"},"\n",{"text":"by ","color":"dark_red"},{"text":"Ancar","color":"red"}]
function placeblocks:load

scoreboard objectives add redstone_additions.delay dummy
scoreboard objectives add redstone_additions.command_feedback dummy
scoreboard objectives add redstone_additions.temp dummy