setblock ~ ~ ~ red_sandstone_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ red_sandstone_wall[waterlogged=true]
