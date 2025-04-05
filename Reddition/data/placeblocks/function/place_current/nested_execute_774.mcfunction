setblock ~ ~ ~ calibrated_sculk_sensor[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ calibrated_sculk_sensor[waterlogged=true]
