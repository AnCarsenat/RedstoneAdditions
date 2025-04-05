setblock ~ ~ ~ light_gray_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ light_gray_candle[waterlogged=true]
