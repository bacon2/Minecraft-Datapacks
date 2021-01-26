execute as @a[tag=dark] run effect give @s minecraft:unluck 10 0 true
execute as @a[tag=dark, predicate=powers:in_sunlight] at @s run function powers:dark_weakness
execute as @a[tag=dark, predicate=powers:in_darkness] at @s run function powers:dark_power
execute as @a[tag=dark] if entity @s[predicate=!powers:in_darkness] if entity @s[predicate=!powers:in_darkness] run effect give @s minecraft:weakness 4 4 true