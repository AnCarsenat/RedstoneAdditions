setblock ~ ~ ~ mangrove_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mangrove_leaves[waterlogged=true]
