execute if block ~1 ~ ~ air run setblock ~ ~ ~ red_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ red_bed[part=head,facing=east]
execute unless block ~ ~ ~ red_bed run scoreboard players set .result dpb_var -1
