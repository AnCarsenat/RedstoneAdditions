setblock ~ ~ ~ andesite_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ andesite_slab[waterlogged=true]
