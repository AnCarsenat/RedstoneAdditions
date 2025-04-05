setblock ~ ~ ~ iron_bars[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ iron_bars[waterlogged=true]
