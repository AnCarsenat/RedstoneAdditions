execute if block ~ ~ ~-1 air run setblock ~ ~ ~ lime_bed[facing=north]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 lime_bed[part=head,facing=north]
execute unless block ~ ~ ~ lime_bed run scoreboard players set .result dpb_var -1
