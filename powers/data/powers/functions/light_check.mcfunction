execute at @a[tag=light] run execute as @e[distance=..10, type=#powers:sunlight_burnable] run data modify entity @s Fire set value 100
execute as @a[tag=light] run effect give @s glowing 10 0 true
execute as @a[tag=light, predicate=powers:in_sunlight] at @s run function powers:light_power
execute as @a[tag=light, predicate=powers:in_darkness] at @s run function powers:light_weakness