setblock ~ ~ ~ spruce_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ spruce_fence[waterlogged=true]
