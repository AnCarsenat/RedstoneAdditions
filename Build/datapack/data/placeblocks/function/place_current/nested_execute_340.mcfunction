setblock ~ ~ ~ jungle_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ jungle_slab[waterlogged=true]
