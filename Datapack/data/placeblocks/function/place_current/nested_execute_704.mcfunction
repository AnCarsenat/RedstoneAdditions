execute if block ~-1 ~ ~ air run setblock ~ ~ ~ white_bed[facing=west]
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ white_bed[part=head,facing=west]
execute unless block ~ ~ ~ white_bed run scoreboard players set .result dpb_var -1
