setblock ~ ~ ~ red_stained_glass_pane[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ red_stained_glass_pane[waterlogged=true]
