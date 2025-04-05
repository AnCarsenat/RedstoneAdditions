setblock ~ ~ ~ mossy_cobblestone_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mossy_cobblestone_slab[waterlogged=true]
