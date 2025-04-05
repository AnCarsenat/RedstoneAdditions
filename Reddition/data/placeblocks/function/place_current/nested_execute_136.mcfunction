setblock ~ ~ ~ cobblestone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cobblestone_slab[waterlogged=true]
