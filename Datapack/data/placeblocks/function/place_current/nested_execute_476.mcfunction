execute if block ~1 ~ ~ air run setblock ~ ~ ~ pink_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ pink_bed[part=head,facing=east]
execute unless block ~ ~ ~ pink_bed run scoreboard players set .result dpb_var -1
