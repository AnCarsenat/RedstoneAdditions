setblock ~ ~ ~ copper_grate[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ copper_grate[waterlogged=true]
