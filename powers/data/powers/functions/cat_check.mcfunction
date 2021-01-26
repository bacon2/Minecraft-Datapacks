execute as @a[tag=cat] run effect give @s minecraft:night_vision 12 0 true
execute as @a[tag=cat, predicate=powers:sprinting] run effect give @s minecraft:jump_boost 1 3 true
execute as @a[tag=cat] store result score @s fall run data get entity @s FallDistance
execute as @a[tag=cat, scores={fall=3..}] run effect give @s minecraft:slow_falling 1 0 true