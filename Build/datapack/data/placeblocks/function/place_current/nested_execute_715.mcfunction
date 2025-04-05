execute if block ~1 ~ ~ air run setblock ~ ~ ~ yellow_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ yellow_bed[part=head,facing=east]
execute unless block ~ ~ ~ yellow_bed run scoreboard players set .result dpb_var -1
