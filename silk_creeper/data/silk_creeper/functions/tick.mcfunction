execute at @e[tag=silk_blast] unless block ~ ~ ~ #silk_creeper:ungrindable run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:iron_pickaxe{Enchantments:[{lvl:1s, id: "minecraft:silk_touch"}]}
execute at @e[tag=silk_blast] unless block ~ ~ ~ #silk_creeper:ungrindable run playsound minecraft:ui.stonecutter.take_result master @p
execute at @e[tag=silk_blast] unless block ~ ~ ~ #silk_creeper:ungrindable run particle minecraft:block minecraft:cobblestone ~ ~ ~ 0.5 0.5 0.5 1 50 normal
execute at @e[tag=silk_blast] unless block ~ ~ ~ #silk_creeper:ungrindable run fill ~ ~ ~ ~ ~ ~ air
execute as @e[tag=silk_blast] at @s facing entity @e[tag=silk_blast, limit=1, sort=random] eyes run tp @s ^0.2 ^ ^-0.4
execute as @e[tag=silk_blast] if predicate silk_creeper:1_in_40 run kill @s