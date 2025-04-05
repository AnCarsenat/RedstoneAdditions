setblock ~ ~ ~ dark_oak_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_oak_leaves[waterlogged=true]
