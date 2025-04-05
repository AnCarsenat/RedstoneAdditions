setblock ~ ~ ~ dark_oak_sign[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ dark_oak_sign[waterlogged=true]
