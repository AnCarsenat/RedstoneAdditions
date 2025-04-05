setblock ~ ~ ~ gray_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ gray_candle[waterlogged=true]
