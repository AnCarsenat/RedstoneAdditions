execute if block ~ ~ ~1 air run setblock ~ ~ ~ gray_bed[facing=south]
execute if block ~ ~ ~1 air run setblock ~ ~ ~1 gray_bed[part=head,facing=south]
execute unless block ~ ~ ~ gray_bed run scoreboard players set .result dpb_var -1
