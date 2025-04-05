setblock ~ ~ ~ white_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ white_candle[waterlogged=true]
