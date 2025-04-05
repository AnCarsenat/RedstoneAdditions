setblock ~ ~ ~ birch_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ birch_fence[waterlogged=true]
