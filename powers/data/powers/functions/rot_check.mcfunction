execute as @a[tag=rot] at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:mycelium replace minecraft:grass_block
clear @a[tag=rot] #powers:rot_unholdable
effect give @a[tag=rot] minecraft:invisibility 8 0 true
execute at @a[tag=rot] run particle minecraft:mycelium ~ ~ ~ 5 5 5 1 200 normal
execute as @a[tag=rot,scores={damage_dealt=1..}] at @s run function powers:rot_power