setblock ~ ~ ~ smooth_quartz_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ smooth_quartz_slab[waterlogged=true]
