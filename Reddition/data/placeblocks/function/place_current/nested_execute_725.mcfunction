setblock ~ ~ ~ yellow_stained_glass_pane[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ yellow_stained_glass_pane[waterlogged=true]
