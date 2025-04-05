setblock ~ ~ ~ brick_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ brick_wall[waterlogged=true]
