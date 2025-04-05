setblock ~ ~ ~ nether_brick_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ nether_brick_slab[waterlogged=true]
