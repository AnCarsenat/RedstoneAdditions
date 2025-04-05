setblock ~ ~ ~ deepslate_tile_wall[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ deepslate_tile_wall[waterlogged=true]
