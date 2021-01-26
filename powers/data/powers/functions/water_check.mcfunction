execute as @a[tag=water] at @s if block ~ ~ ~ minecraft:water run function powers:water_power
effect give @a[tag=water] minecraft:water_breathing 8 0 true
effect give @a[tag=water] minecraft:dolphins_grace 8 0 true
execute at @a[tag=water] run particle minecraft:dripping_water ~ ~ ~ 0.2 0 0.2 10 1 normal