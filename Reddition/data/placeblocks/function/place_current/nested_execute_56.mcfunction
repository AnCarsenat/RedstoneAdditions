execute if block ~1 ~ ~ air run setblock ~ ~ ~ black_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ black_bed[part=head,facing=east]
execute unless block ~ ~ ~ black_bed run scoreboard players set .result dpb_var -1
