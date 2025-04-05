execute if block ~ ~ ~1 air run setblock ~ ~ ~ orange_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 orange_bed[part=head,facing=south]
execute unless block ~ ~ ~ orange_bed run scoreboard players set .result dpb_var -1
