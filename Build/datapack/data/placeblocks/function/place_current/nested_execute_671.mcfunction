setblock ~ ~ ~ warped_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ warped_fence[waterlogged=true]
