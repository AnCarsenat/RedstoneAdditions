setblock ~ ~ ~ prismarine_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ prismarine_wall[waterlogged=true]
