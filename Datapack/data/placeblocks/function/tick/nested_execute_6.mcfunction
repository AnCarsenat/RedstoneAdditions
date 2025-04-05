tag @s add dpb_checked
execute unless block ~ ~ ~ #placeblocks:potentially_placeable run return 0
execute if block ~0.75 ~ ~ dispenser[facing=west] rotated 90 0 run return run function placeblocks:tick/nested_execute_0
execute if block ~-0.75 ~ ~ dispenser[facing=east] rotated -90 0 run return run function placeblocks:tick/nested_execute_1
execute if block ~ ~0.75 ~ dispenser[facing=down] rotated -90 90 run return run function placeblocks:tick/nested_execute_2
execute if block ~ ~-0.75 ~ dispenser[facing=up] rotated -90 -90 run return run function placeblocks:tick/nested_execute_3
execute if block ~ ~ ~0.75 dispenser[facing=north] rotated 180 0 run return run function placeblocks:tick/nested_execute_4
execute if block ~ ~ ~-0.75 dispenser[facing=south] rotated 0 0 run return run function placeblocks:tick/nested_execute_5
