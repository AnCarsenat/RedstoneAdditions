setblock ~ ~ ~ mud_brick_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mud_brick_wall[waterlogged=true]
