effect give @a[tag=lightning] minecraft:speed 8 3 true
effect give @a[tag=lightning] minecraft:glowing 8 3 true
execute at @a[tag=lightning] run execute at @e[distance=5..9, tag=!lightning, type=!minecraft:item] unless entity @e[type=minecraft:lightning_bolt, distance=..2] unless entity @e[type=minecraft:villager, distance=..5] unless entity @e[type=minecraft:player, distance=..5] run summon minecraft:lightning_bolt
execute as @a[tag=lightning] at @s if block ~ ~ ~ minecraft:water unless entity @e[type=minecraft:lightning_bolt, distance=..2] run effect give @s wither 3 4
execute as @a[tag=lightning] if entity @e[type=minecraft:lightning_bolt, distance=..10] run effect give @s minecraft:instant_health
execute at @a[tag=lightning] run particle minecraft:firework ~ ~ ~ 7 7 7 10 1 normal