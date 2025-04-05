setblock ~ ~ ~ quartz_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ quartz_slab[waterlogged=true]
