execute at @e[type=item, nbt={Item:{id:"minecraft:oak_sapling"}}] if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ minecraft:oak_sapling replace minecraft:air
execute as @e[type=item, nbt={Item:{id:"minecraft:oak_sapling"}}] at @s if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] if block ~ ~ ~ minecraft:oak_sapling run kill @s
execute at @e[type=item, nbt={Item:{id:"minecraft:birch_sapling"}}] if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ minecraft:birch_sapling replace minecraft:air
execute as @e[type=item, nbt={Item:{id:"minecraft:birch_sapling"}}] at @s if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] if block ~ ~ ~ minecraft:birch_sapling run kill @s
execute at @e[type=item, nbt={Item:{id:"minecraft:spruce_sapling"}}] if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ minecraft:spruce_sapling replace minecraft:air
execute as @e[type=item, nbt={Item:{id:"minecraft:spruce_sapling"}}] at @s if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] if block ~ ~ ~ minecraft:spruce_sapling run kill @s
execute at @e[type=item, nbt={Item:{id:"minecraft:dark_oak_sapling"}}] if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ minecraft:dark_oak_sapling replace minecraft:air
execute as @e[type=item, nbt={Item:{id:"minecraft:dark_oak_sapling"}}] at @s if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] if block ~ ~ ~ minecraft:dark_oak_sapling run kill @s
execute at @e[type=item, nbt={Item:{id:"minecraft:acacia_sapling"}}] if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ minecraft:acacia_sapling replace minecraft:air
execute as @e[type=item, nbt={Item:{id:"minecraft:acacia_sapling"}}] at @s if block ~ ~-1 ~ #autosapling:sapling_plantable_on unless entity @p[distance=..2] if block ~ ~ ~ minecraft:acacia_sapling run kill @s