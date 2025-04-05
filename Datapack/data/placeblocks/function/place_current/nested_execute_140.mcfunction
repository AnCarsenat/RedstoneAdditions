setblock ~ ~ ~ cobblestone_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ cobblestone_wall[waterlogged=true]
