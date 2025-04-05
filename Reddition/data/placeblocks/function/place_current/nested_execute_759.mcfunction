setblock ~ ~ ~ sculk_vein[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ sculk_vein[waterlogged=true]
