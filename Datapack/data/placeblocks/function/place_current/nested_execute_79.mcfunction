execute if block ~-1 ~ ~ air run setblock ~ ~ ~ blue_bed[facing=west]
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ blue_bed[part=head,facing=west]
execute unless block ~ ~ ~ blue_bed run scoreboard players set .result dpb_var -1
