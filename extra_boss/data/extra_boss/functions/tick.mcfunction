execute at @e[type=minecraft:end_crystal] if block ~ ~-2 ~ minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block if block ~-1 ~-1 ~ minecraft:iron_block run function extra_boss:summon_kqitzul
execute at @e[type=minecraft:end_crystal] if block ~ ~-2 ~ minecraft:iron_block if block ~ ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~-1 minecraft:iron_block run function extra_boss:summon_kqitzul
execute at @a if entity @e[tag=kqitzul, distance=..70] run bossbar set extra_boss:kqitzul visible true
execute at @a unless entity @e[tag=kqitzul, distance=..70] run bossbar set extra_boss:kqitzul visible false
execute store result bossbar extra_boss:kqitzul value run data get entity @e[tag=hitbox, limit=1] AbsorptionAmount 1
execute as @e[tag=brain] unless entity @e[tag=body, distance=..1] run effect give @s minecraft:weakness 10 255 true
execute as @e[tag=brain] run effect give @s minecraft:invisibility 10 0 true
execute as @e[tag=body] at @s run tp @s @e[tag=brain, limit=1, sort=nearest, distance=..2]
execute as @e[tag=body] run data modify entity @s Rotation set from entity @e[tag=brain, limit=1, sort=nearest, distance=..2] Rotation
execute as @e[tag=body] run data modify entity @s NoAI set value 1b
execute as @e[tag=brain] at @s run tp @e[tag=hat, limit=1, sort=nearest, distance=..8] ~ ~1.3 ~
execute as @e[tag=hat] run data modify entity @s ShowBottom set value 0b
execute as @e[tag=hat] run data modify entity @s ShowBottom set value 1b
execute as @e[tag=hat] run data modify entity @s Rotation set from entity @e[tag=brain, limit=1, sort=nearest, distance=..2] Rotation
execute as @e[tag=hitbox] at @s run tp @s @e[tag=brain, limit=1, sort=nearest, distance=..2]
execute as @e[tag=hitbox] run effect give @s minecraft:invisibility 10 0 true
execute as @e[tag=kqitzul, tag=brain] run attribute @s minecraft:generic.follow_range base set 40
execute as @e[tag=kqitzul] run data modify entity @s PersistenceRequired set value 1b
effect give @e[tag=kqitzul, tag=hitbox] minecraft:fire_resistance 10 0 true
effect give @e[tag=kqitzul] minecraft:slow_falling 10 0 true
execute as @e[tag=brain, tag=kqitzul] at @s unless entity @e[tag=hat, distance=..4] run summon minecraft:end_crystal ~ ~1 ~ {Tags:["hat", "kqitzul"]}
execute as @e[tag=flying_crystal] at @s run tp @s @e[type=vex, distance=..2, limit=1, sort=random]
execute as @e[type=vex] at @s if entity @e[distance=..50, tag=kqitzul] unless entity @e[tag=flying_crystal, distance=..2] run summon minecraft:end_crystal ~ ~ ~ {Tags:["flying_crystal"]}
execute as @e[tag=flying_crystal] run data modify entity @s ShowBottom set value 1b
execute as @e[tag=flying_crystal] run data modify entity @s ShowBottom set value 0b
execute at @e[tag=kqitzul, tag=body] run particle minecraft:flame ~ ~ ~ 1 1 1 0.1 1 normal
execute as @e[tag=brain, tag=kqitzul] at @s unless entity @e[tag=hitbox, tag=kqitzul, distance=..5] run function extra_boss:victory_kqitzul