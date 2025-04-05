setblock ~ ~ ~ purple_candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ purple_candle[waterlogged=true]
