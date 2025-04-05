setblock ~ ~ ~ pointed_dripstone[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ pointed_dripstone[waterlogged=true]
