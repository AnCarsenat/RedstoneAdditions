setblock ~ ~ ~ prismarine_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ prismarine_slab[waterlogged=true]
