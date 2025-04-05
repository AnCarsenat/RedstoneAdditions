setblock ~ ~ ~ lantern[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ lantern[waterlogged=true]
