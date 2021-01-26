execute as @a[tag=fire] at @s if block ~ ~ ~ minecraft:water run effect give @s wither 3 5
execute as @a[tag=fire] at @s unless entity @s[nbt={Fire:-20s}] run function powers:fire_power
execute as @a[tag=fire] at @s if block ~ ~ ~ minecraft:lava run effect give @s minecraft:instant_health
effect give @a[tag=fire] minecraft:fire_resistance 8 0 true
execute at @a[tag=fire] if predicate powers:1_in_8 run particle minecraft:lava ~ ~ ~ 0 0 0 0.1 1 normal