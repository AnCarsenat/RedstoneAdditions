setblock ~ ~ ~ blackstone_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ blackstone_wall[waterlogged=true]
