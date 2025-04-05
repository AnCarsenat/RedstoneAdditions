setblock ~ ~ ~ glass_pane[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ glass_pane[waterlogged=true]
