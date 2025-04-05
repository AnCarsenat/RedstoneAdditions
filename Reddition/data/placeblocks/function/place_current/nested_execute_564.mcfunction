setblock ~ ~ ~ red_nether_brick_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ red_nether_brick_slab[waterlogged=true]
