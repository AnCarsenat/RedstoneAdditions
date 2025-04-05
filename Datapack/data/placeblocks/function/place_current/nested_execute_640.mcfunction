setblock ~ ~ ~ stone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ stone_slab[waterlogged=true]
