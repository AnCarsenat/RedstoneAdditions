setblock ~ ~ ~ dark_oak_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_oak_slab[waterlogged=true]
