execute if block ~ ~ ~1 air run setblock ~ ~ ~ green_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 green_bed[part=head,facing=south]
execute unless block ~ ~ ~ green_bed run scoreboard players set .result dpb_var -1
