setblock ~ ~ ~ small_dripleaf[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ small_dripleaf[waterlogged=true]
