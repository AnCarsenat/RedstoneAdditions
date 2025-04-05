scoreboard players set .direction dpb_var 4
execute if data entity @e[type=item, limit=1, sort=nearest] Thrower run return 1
function placeblocks:place_item
