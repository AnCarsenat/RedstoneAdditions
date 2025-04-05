setblock ~ ~ ~ dark_oak_hanging_sign[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_oak_hanging_sign[waterlogged=true]
