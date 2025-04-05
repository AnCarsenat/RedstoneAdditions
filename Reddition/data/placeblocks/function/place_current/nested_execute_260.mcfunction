setblock ~ ~ ~ exposed_cut_copper_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ exposed_cut_copper_slab[waterlogged=true]
