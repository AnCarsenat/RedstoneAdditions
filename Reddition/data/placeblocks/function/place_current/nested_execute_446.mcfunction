setblock ~ ~ ~ oak_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ oak_leaves[waterlogged=true]
