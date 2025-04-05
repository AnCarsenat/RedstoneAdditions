schedule function placeblocks:spawn_helpers 7s replace
execute store result score .count dpb_var if entity @e[type=armor_stand, tag=dpb_helper]
execute if score .count dpb_var matches 2.. run kill @e[type=armor_stand, tag=dpb_helper]
execute unless score .count dpb_var matches 1 run summon armor_stand 0 -64 0 {Small: 1b, Marker: 1b, Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, ShowArms: 1b, Tags: ["dpb_helper"], DisabledSlots: 4144959}
