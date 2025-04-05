setblock ~ ~ ~ dark_oak_fence[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_oak_fence[waterlogged=true]
