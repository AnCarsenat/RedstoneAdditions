setblock ~ ~ ~ sandstone_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ sandstone_wall[waterlogged=true]
