execute if block ~1 ~ ~ air run setblock ~ ~ ~ white_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ white_bed[part=head,facing=east]
execute unless block ~ ~ ~ white_bed run scoreboard players set .result dpb_var -1
