setblock ~ ~ ~ acacia_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ acacia_slab[waterlogged=true]
