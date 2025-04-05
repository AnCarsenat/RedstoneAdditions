execute if block ~1 ~ ~ air run setblock ~ ~ ~ light_gray_bed[facing=east]
execute if block ~1 ~ ~ air run setblock ~1 ~ ~ light_gray_bed[part=head,facing=east]
execute unless block ~ ~ ~ light_gray_bed run scoreboard players set .result dpb_var -1
