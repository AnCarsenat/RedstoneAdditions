setblock ~ ~ ~ brown_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ brown_candle[waterlogged=true]
