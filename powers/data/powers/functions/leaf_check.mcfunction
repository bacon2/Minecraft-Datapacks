execute as @a[tag=leaf] at @s if block ~ ~-1 ~ minecraft:grass_block run function powers:leaf_power
execute as @a[tag=leaf] at @s if block ~ ~ ~ #powers:leaf_healing run effect give @s minecraft:instant_health
effect give @a[tag=leaf] minecraft:luck 8 0 true
replaceitem entity @a[tag=leaf] hotbar.8 minecraft:bone_meal
execute at @a[tag=leaf] run particle minecraft:happy_villager ~ ~ ~ 0.4 1.5 0.4 1 1 normal