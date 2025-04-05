scoreboard players set .result dpb_var -1
execute as @e[type=armor_stand, tag=dpb_helper] if predicate placeblocks:blocks store result score .result dpb_var run function placeblocks:place_current/nested_execute_911
