setblock ~ ~ ~ tuff_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ tuff_slab[waterlogged=true]
