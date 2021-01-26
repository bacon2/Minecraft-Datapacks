effect give @a[tag=wind] minecraft:slow_falling 8 3 true
execute at @a[tag=wind, predicate=powers:sneaking] run execute as @e[distance=..6, tag=!wind] at @s run function powers:wind_power