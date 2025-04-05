execute if block ~-1 ~ ~ air run setblock ~ ~ ~ cyan_bed[facing=west]
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ cyan_bed[part=head,facing=west]
execute unless block ~ ~ ~ cyan_bed run scoreboard players set .result dpb_var -1
