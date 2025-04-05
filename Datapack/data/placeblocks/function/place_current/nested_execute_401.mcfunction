execute if block ~ ~ ~1 air run setblock ~ ~ ~ magenta_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 magenta_bed[part=head,facing=south]
execute unless block ~ ~ ~ magenta_bed run scoreboard players set .result dpb_var -1
