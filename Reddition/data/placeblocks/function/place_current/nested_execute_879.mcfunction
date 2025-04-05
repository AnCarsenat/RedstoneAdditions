setblock ~ ~ ~ waxed_exposed_copper_grate[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ waxed_exposed_copper_grate[waterlogged=true]
