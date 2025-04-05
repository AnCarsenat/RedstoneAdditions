setblock ~ ~ ~ tuff_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ tuff_wall[waterlogged=true]
