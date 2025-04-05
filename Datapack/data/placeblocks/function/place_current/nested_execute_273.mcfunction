setblock ~ ~ ~ glow_lichen[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ glow_lichen[waterlogged=true]
