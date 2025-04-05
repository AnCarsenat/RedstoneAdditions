setblock ~ ~ ~ mangrove_roots[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mangrove_roots[waterlogged=true]
