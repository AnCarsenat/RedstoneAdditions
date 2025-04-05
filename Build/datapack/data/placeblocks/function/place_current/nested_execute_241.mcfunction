setblock ~ ~ ~ diorite_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ diorite_slab[waterlogged=true]
