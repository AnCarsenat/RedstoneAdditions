setblock ~ ~ ~ acacia_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ acacia_fence[waterlogged=true]
