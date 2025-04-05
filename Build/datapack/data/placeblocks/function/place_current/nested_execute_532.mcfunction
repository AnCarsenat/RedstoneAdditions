execute if block ~ ~ ~-1 air run setblock ~ ~ ~ purple_bed[facing=north]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 purple_bed[part=head,facing=north]
execute unless block ~ ~ ~ purple_bed run scoreboard players set .result dpb_var -1
