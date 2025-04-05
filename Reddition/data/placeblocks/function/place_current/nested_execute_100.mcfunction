execute if block ~ ~ ~1 air run setblock ~ ~ ~ brown_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 brown_bed[part=head,facing=south]
execute unless block ~ ~ ~ brown_bed run scoreboard players set .result dpb_var -1
