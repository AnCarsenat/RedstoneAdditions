setblock ~ ~ ~ jungle_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ jungle_fence[waterlogged=true]
