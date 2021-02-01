execute if data storage legit_mcweather:weather {weather:1} at @a run execute at @a run particle minecraft:falling_dust minecraft:snow ~ ~ ~ 10 10 10 2 100 force
execute if data storage legit_mcweather:weather {weather:1} at @a run summon minecraft:falling_block ~10 ~50 ~10 {NoGravity:0b, BlockState:{Name:"minecraft:snow"}, Time:1s, Tags:["legit_snow"]}
execute if data storage legit_mcweather:weather {weather:1} at @a run spreadplayers ~ ~ 1 50 false @e[tag=legit_snow]
execute if data storage legit_mcweather:weather {weather:1} run kill @e[type=item, nbt={Item:{id:"minecraft:snow"}}]
execute if data storage legit_mcweather:weather {weather:1} at @a run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_cold"]}
execute if data storage legit_mcweather:weather {weather:1} at @a run spreadplayers ~ ~ 1 50 false @e[tag=legit_cold]
execute if data storage legit_mcweather:weather {weather:1} at @e[tag=legit_cold] run fill ~-5 ~10 ~-5 ~5 ~-2 ~5 minecraft:ice replace minecraft:water
execute if data storage legit_mcweather:weather {weather:1} as @e[tag=legit_cold] at @s unless block ~ ~-1 ~ air run kill @s
execute if data storage legit_mcweather:weather {weather:1} at @a run gamerule randomTickSpeed 3
execute if data storage legit_mcweather:weather {weather:1} run weather clear
execute if data storage legit_mcweather:weather {weather:2} unless entity @e[tag=tornado] run summon bat ~-20 80 ~10 {Tags:["tornado"]}
execute if data storage legit_mcweather:weather {weather:2} at @e[tag=tornado] run particle minecraft:sweep_attack ~ ~5 ~ 5 5 5 1 10 force
execute if data storage legit_mcweather:weather {weather:2} at @e[tag=tornado] run particle minecraft:dust 0.5 0.5 0.5 5.0 ~ ~10 ~ 2 10 2 1 100 force
execute if data storage legit_mcweather:weather {weather:2} as @p at @s if entity @e[tag=tornado, distance=..20] run tp @s ^ ^3 ^
execute if data storage legit_mcweather:weather {weather:2} at @a run gamerule randomTickSpeed 3
execute if data storage legit_mcweather:weather {weather:2} at @a run weather thunder
execute if data storage legit_mcweather:weather {weather:3} at @a run particle minecraft:falling_water ~ ~20 ~ 10 10 10 10 100 force
execute if data storage legit_mcweather:weather {weather:3} run weather thunder
execute if data storage legit_mcweather:weather {weather:3} at @a run summon minecraft:falling_block ~10 ~50 ~10 {NoGravity:0b, BlockState:{Name:"minecraft:water"}, Time:1s, Tags:["legit_flood"]}
execute if data storage legit_mcweather:weather {weather:3} at @a in minecraft:overworld run spreadplayers ~ ~ 1 100 under 68 false @e[tag=legit_flood]
execute if data storage legit_mcweather:weather {weather:3} at @a run gamerule randomTickSpeed 4
execute if data storage legit_mcweather:weather {weather:4} run weather clear
execute if data storage legit_mcweather:weather {weather:4} at @a run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_heat"]}
execute if data storage legit_mcweather:weather {weather:4} at @a run spreadplayers ~ ~ 1 100 false @e[tag=legit_heat]
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:dirt replace minecraft:grass_block
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 fire replace #minecraft:logs_that_burn
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:water
execute if data storage legit_mcweather:weather {weather:4} at @e[tag=legit_heat] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:snow
execute if data storage legit_mcweather:weather {weather:4} as @e[tag=legit_heat] at @s unless block ~ ~-1 ~ air run kill @s
execute if data storage legit_mcweather:weather {weather:4} at @a run gamerule randomTickSpeed 2
execute if data storage legit_mcweather:weather {weather:5} at @a run particle minecraft:happy_villager ~ ~-3 ~ 5 5 5 10 1 normal
execute if data storage legit_mcweather:weather {weather:5} at @a run gamerule randomTickSpeed 100
execute if data storage legit_mcweather:weather {weather:5} at @a run summon minecraft:armor_stand ~10 ~50 ~10 {Tags:["legit_growth"]}
execute if data storage legit_mcweather:weather {weather:5} at @a run spreadplayers ~ ~ 1 100 false @e[tag=legit_growth]
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:1_in_100] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_oak_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_acacia_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:acacia_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_jungle_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~1 ~ ~1 minecraft:jungle_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_birch_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:birch_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_dark_oak_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~1 ~ ~1 minecraft:dark_oak_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_spruce_biome] if block ~ ~-1 ~ minecraft:grass_block run fill ~ ~ ~ ~ ~ ~ minecraft:spruce_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth, predicate=legit_mcweather:in_spruce_biome] if block ~ ~-1 ~ minecraft:podzol run fill ~ ~ ~ ~1 ~ ~1 minecraft:spruce_sapling replace minecraft:air
execute if data storage legit_mcweather:weather {weather:5} at @e[tag=legit_growth] run fill ~-10 ~-5 ~-10 ~10 ~5 ~10 minecraft:water replace minecraft:ice
execute if data storage legit_mcweather:weather {weather:5} as @e[tag=legit_growth] at @s unless block ~ ~-1 ~ air run kill @s
execute store result storage legit_mcweather:time time short 1 run time query daytime
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_2 run data modify storage legit_mcweather:weather weather set value 6
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_20 run data modify storage legit_mcweather:weather weather set value 1
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_20 run data modify storage legit_mcweather:weather weather set value 2
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_20 run data modify storage legit_mcweather:weather weather set value 3
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_20 run data modify storage legit_mcweather:weather weather set value 4
execute if data storage legit_mcweather:time {time:1234s} if predicate legit_mcweather:1_in_20 run data modify storage legit_mcweather:weather weather set value 5