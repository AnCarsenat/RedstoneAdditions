setblock ~ ~ ~ decorated_pot[]
execute if score .waterlogged dpb_var matches 1 run setblock ~ ~ ~ decorated_pot[waterlogged=true]
