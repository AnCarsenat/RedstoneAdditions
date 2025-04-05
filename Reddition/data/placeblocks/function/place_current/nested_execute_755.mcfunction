setblock ~ ~ ~ sculk_shrieker[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ sculk_shrieker[waterlogged=true]
