setblock ~ ~ ~ granite_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ granite_wall[waterlogged=true]
