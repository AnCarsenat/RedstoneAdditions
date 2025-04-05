execute if block ~ ~ ~1 air run setblock ~ ~ ~ red_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 red_bed[part=head,facing=south]
execute unless block ~ ~ ~ red_bed run scoreboard players set .result dpb_var -1
