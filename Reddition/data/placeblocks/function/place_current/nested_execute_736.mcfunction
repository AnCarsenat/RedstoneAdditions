setblock ~ ~ ~ mangrove_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mangrove_fence[waterlogged=true]
