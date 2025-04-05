setblock ~ ~ ~ acacia_leaves[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ acacia_leaves[waterlogged=true]
