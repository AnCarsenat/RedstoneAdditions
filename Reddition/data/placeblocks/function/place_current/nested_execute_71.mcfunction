setblock ~ ~ ~ blackstone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ blackstone_slab[waterlogged=true]
