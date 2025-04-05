setblock ~ ~ ~ cherry_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cherry_fence[waterlogged=true]
