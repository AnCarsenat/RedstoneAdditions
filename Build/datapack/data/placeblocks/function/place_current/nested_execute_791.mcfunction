setblock ~ ~ ~ cherry_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cherry_slab[waterlogged=true]
