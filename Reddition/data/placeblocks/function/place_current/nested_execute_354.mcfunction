execute if block ~ ~ ~1 air run setblock ~ ~ ~ light_blue_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 light_blue_bed[part=head,facing=south]
execute unless block ~ ~ ~ light_blue_bed run scoreboard players set .result dpb_var -1
