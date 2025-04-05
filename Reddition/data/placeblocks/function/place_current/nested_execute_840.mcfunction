setblock ~ ~ ~ heavy_core[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ heavy_core[waterlogged=true]
