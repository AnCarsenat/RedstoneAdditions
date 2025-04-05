setblock ~ ~ ~ red_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ red_candle[waterlogged=true]
