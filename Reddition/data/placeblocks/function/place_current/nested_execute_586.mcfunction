setblock ~ ~ ~ scaffolding[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ scaffolding[waterlogged=true]
