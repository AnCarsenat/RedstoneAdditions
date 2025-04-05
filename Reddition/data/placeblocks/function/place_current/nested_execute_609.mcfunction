setblock ~ ~ ~ smooth_stone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ smooth_stone_slab[waterlogged=true]
