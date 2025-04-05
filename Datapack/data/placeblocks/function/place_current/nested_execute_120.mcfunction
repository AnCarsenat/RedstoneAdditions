setblock ~ ~ ~ candle[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ candle[waterlogged=true]
