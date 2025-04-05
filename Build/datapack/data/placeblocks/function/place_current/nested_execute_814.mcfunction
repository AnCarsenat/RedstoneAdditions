setblock ~ ~ ~ bamboo_sign[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ bamboo_sign[waterlogged=true]
