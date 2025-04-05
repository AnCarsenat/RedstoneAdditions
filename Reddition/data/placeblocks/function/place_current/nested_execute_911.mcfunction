scoreboard players set .result dpb_var 1
scoreboard players set .waterlogged dpb_var 0
execute if predicate placeblocks:invert_direction run function placeblocks:place_current/nested_execute_0
execute if block ~ ~ ~ water run scoreboard players set .waterlogged dpb_var 1
execute if predicate placeblocks:need_water unless block ~ ~ ~ water run return -3
execute if score .direction dpb_var matches 4.. if predicate placeblocks:facing_horizontal_only run scoreboard players set .direction dpb_var 0
execute if predicate placeblocks:needs_air_above unless block ~ ~1 ~ air run return -4
execute if predicate placeblocks:need_surface unless block ^ ^ ^1 #placeblocks:opaque run return -5
execute if predicate placeblocks:need_surface_above unless block ~ ~1 ~ #placeblocks:opaque run return -6
execute if predicate placeblocks:need_farmland_below unless block ~ ~-1 ~ farmland run return -7
execute if predicate placeblocks:need_ground_below unless block ~ ~-1 ~ #placeblocks:opaque unless block ~ ~-1 ~ #slabs[type=double] unless block ~ ~-1 ~ #slabs[type=top] unless block ~ ~-1 ~ #stairs[half=top] run return -8
execute if predicate placeblocks:holding/lily_pad unless block ~ ~-1 ~ water run return -9
execute if predicate placeblocks:holding/nether_wart unless block ~ ~-1 ~ soul_sand run return -10
execute if predicate placeblocks:l1_0 run function placeblocks:place_current/nested_execute_223
execute if predicate placeblocks:l1_1 run function placeblocks:place_current/nested_execute_445
execute if predicate placeblocks:l1_2 run function placeblocks:place_current/nested_execute_651
execute if predicate placeblocks:l1_3 run function placeblocks:place_current/nested_execute_910
execute if score .result dpb_var matches ..-1 run return -1
