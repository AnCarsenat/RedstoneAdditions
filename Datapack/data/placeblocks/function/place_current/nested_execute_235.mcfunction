setblock ~ ~ ~ deepslate_tile_slab[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ deepslate_tile_slab[waterlogged=true]
