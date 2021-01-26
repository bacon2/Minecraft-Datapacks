effect give @s minecraft:instant_health
effect give @s minecraft:strength 1 2 true
effect give @s minecraft:haste 2 8 true
execute if entity @s[predicate=powers:sprinting] run effect give @s minecraft:speed 1 3 true
execute if entity @s[predicate=powers:sneaking] run effect give @s minecraft:invisibility 1 0 true