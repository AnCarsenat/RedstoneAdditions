setblock ~ ~ ~ bamboo_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ bamboo_fence[waterlogged=true]
