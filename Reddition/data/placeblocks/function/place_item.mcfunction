data modify entity @e[type=armor_stand, tag=dpb_helper, limit=1] HandItems[0] set from entity @s Item
function placeblocks:place_current
execute unless score .result dpb_var matches ..-1 if block ~ ~ ~ air run tag @e[type=item, tag=!dpb_checked, distance=..1] add dpb_checked
execute unless score .result dpb_var matches ..-1 run kill @s
