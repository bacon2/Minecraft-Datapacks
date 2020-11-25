execute as @e[type=creeper] at @s unless block ~ ~-1 ~ #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~1 ~ ~ #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~ ~ ~1 #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~-1 ~ ~ #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~ ~ ~-1 #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~1 ~1 ~ #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~ ~1 ~1 #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~-1 ~1 ~ #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s unless block ~ ~1 ~-1 #vengeful_creeper:creeper_ignorable run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=cow, distance=..2] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=chicken, distance=..2] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=pig, distance=..2] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=sheep, distance=..2] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=wolf, distance=..2] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if entity @e[type=villager, distance=..2] run data modify entity @s ignited set value 1b