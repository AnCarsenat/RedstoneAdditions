setblock ~ ~ ~ mangrove_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mangrove_slab[waterlogged=true]
