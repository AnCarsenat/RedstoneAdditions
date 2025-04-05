scoreboard players operation .prevdirection dpb_var = .direction dpb_var
execute if score .prevdirection dpb_var matches 0 run scoreboard players set .direction dpb_var 3
execute if score .prevdirection dpb_var matches 3 run scoreboard players set .direction dpb_var 0
execute if score .prevdirection dpb_var matches 2 run scoreboard players set .direction dpb_var 1
execute if score .prevdirection dpb_var matches 1 run scoreboard players set .direction dpb_var 2
execute if score .prevdirection dpb_var matches 4 run scoreboard players set .direction dpb_var 5
execute if score .prevdirection dpb_var matches 5 run scoreboard players set .direction dpb_var 4
