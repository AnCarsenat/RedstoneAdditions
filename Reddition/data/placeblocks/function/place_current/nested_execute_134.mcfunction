setblock ~ ~ ~ cobbled_deepslate_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cobbled_deepslate_wall[waterlogged=true]
