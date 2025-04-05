execute if block ~1 ~ ~ air run setblock ~ ~ ~ cyan_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ cyan_bed[part=head,facing=east]
execute unless block ~ ~ ~ cyan_bed run scoreboard players set .result dpb_var -1
