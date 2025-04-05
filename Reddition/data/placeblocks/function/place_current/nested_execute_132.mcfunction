setblock ~ ~ ~ cobbled_deepslate_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cobbled_deepslate_slab[waterlogged=true]
