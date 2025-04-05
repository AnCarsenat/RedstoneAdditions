setblock ~ ~ ~ warped_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ warped_slab[waterlogged=true]
