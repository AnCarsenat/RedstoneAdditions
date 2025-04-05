setblock ~ ~ ~ diorite_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ diorite_wall[waterlogged=true]
