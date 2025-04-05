setblock ~ ~ ~ yellow_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ yellow_candle[waterlogged=true]
