setblock ~ ~ ~ sandstone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ sandstone_slab[waterlogged=true]
