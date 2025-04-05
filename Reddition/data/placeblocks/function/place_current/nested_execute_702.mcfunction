execute if block ~ ~ ~1 air run setblock ~ ~ ~ white_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 white_bed[part=head,facing=south]
execute unless block ~ ~ ~ white_bed run scoreboard players set .result dpb_var -1
