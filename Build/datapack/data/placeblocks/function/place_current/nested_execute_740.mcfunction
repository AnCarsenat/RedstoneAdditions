setblock ~ ~ ~ mangrove_propagule[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ mangrove_propagule[waterlogged=true]
