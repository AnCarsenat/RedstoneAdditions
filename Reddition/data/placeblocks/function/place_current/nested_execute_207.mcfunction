setblock ~ ~ ~ dark_prismarine_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_prismarine_slab[waterlogged=true]
