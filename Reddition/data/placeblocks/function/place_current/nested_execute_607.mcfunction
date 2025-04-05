setblock ~ ~ ~ smooth_sandstone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ smooth_sandstone_slab[waterlogged=true]
