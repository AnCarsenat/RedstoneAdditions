execute if block ~ ~ ~-1 air run setblock ~ ~ ~ magenta_bed[facing=north]
execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 magenta_bed[part=head,facing=north]
execute unless block ~ ~ ~ magenta_bed run scoreboard players set .result dpb_var -1
