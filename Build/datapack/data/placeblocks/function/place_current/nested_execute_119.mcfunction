execute if score .waterlogged dpb_var matches 0 if score .direction dpb_var matches 0 run setblock ~ ~ ~ campfire[facing=east]
execute if score .waterlogged dpb_var matches 0 if score .direction dpb_var matches 1 run setblock ~ ~ ~ campfire[facing=south]
execute if score .waterlogged dpb_var matches 0 if score .direction dpb_var matches 2 run setblock ~ ~ ~ campfire[facing=north]
execute if score .waterlogged dpb_var matches 0 if score .direction dpb_var matches 3 run setblock ~ ~ ~ campfire[facing=west]
execute if score .waterlogged dpb_var matches 1 if score .direction dpb_var matches 0 run setblock ~ ~ ~ campfire[waterlogged=true,facing=east]
execute if score .waterlogged dpb_var matches 1 if score .direction dpb_var matches 1 run setblock ~ ~ ~ campfire[waterlogged=true,facing=south]
execute if score .waterlogged dpb_var matches 1 if score .direction dpb_var matches 2 run setblock ~ ~ ~ campfire[waterlogged=true,facing=north]
execute if score .waterlogged dpb_var matches 1 if score .direction dpb_var matches 3 run setblock ~ ~ ~ campfire[waterlogged=true,facing=west]
