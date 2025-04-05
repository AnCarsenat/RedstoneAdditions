setblock ~ ~ ~ nether_brick_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ nether_brick_fence[waterlogged=true]
