setblock ~ ~ ~ spruce_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ spruce_leaves[waterlogged=true]
