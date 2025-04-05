setblock ~ ~ ~ birch_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ birch_leaves[waterlogged=true]
