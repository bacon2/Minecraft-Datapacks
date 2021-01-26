data modify entity @s Rotation set from entity @p[tag=wind] Rotation
particle minecraft:sweep_attack ~ ~ ~ 2 2 2 1 20 normal
effect give @s minecraft:slow_falling 4 0 true
tp @s ^ ^2 ^1
execute unless block ~ ~ ~ air run tp @s @p[tag=wind]
playsound minecraft:entity.arrow.shoot master @a[tag=wind] ~ ~5 ~ 4 0.1