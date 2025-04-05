setblock ~ ~ ~ polished_blackstone_brick_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ polished_blackstone_brick_slab[waterlogged=true]
