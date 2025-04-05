setblock ~ ~ ~ light_blue_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ light_blue_candle[waterlogged=true]
