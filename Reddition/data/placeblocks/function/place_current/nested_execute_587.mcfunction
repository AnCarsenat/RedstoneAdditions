setblock ~ ~ ~ sculk_sensor[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ sculk_sensor[waterlogged=true]
