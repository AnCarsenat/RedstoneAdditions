execute if block ~ ~ ~-1 air run setblock ~ ~ ~ orange_bed[facing=north]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 orange_bed[part=head,facing=north]
execute unless block ~ ~ ~ orange_bed run scoreboard players set .result dpb_var -1
