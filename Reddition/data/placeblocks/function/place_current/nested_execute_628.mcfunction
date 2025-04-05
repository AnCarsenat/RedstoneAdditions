setblock ~ ~ ~ spruce_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ spruce_slab[waterlogged=true]
