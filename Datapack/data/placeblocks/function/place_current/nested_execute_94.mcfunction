setblock ~ ~ ~ brick_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ brick_slab[waterlogged=true]
