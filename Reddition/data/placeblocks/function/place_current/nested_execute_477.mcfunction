execute if block ~ ~ ~1 air run setblock ~ ~ ~ pink_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 pink_bed[part=head,facing=south]
execute unless block ~ ~ ~ pink_bed run scoreboard players set .result dpb_var -1
