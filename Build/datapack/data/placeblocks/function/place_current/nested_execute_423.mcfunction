setblock ~ ~ ~ mossy_stone_brick_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mossy_stone_brick_wall[waterlogged=true]
