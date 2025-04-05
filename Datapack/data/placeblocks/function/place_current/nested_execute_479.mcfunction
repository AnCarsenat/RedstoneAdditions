execute if block ~-1 ~ ~ air run setblock ~ ~ ~ pink_bed[facing=west]
execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ pink_bed[part=head,facing=west]
execute unless block ~ ~ ~ pink_bed run scoreboard players set .result dpb_var -1
