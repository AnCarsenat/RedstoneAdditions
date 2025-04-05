setblock ~ ~ ~ bamboo_mosaic_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ bamboo_mosaic_slab[waterlogged=true]
