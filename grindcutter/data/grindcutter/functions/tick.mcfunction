execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run tell @p We're sorry, but we had to break that to prevent duping.
execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run give @p minecraft:stonecutter 1
execute at @e[tag=grindcutter] if entity @e[tag=grindcutter, distance=0.01..1] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace minecraft:stonecutter
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter:ungrindable run loot spawn ~ ~1 ~ mine ~ ~1 ~ minecraft:iron_pickaxe
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter:ungrindable run playsound minecraft:ui.stonecutter.take_result master @p
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter:ungrindable run particle minecraft:block minecraft:cobblestone ~ ~1 ~ 0.5 0.5 0.5 1 50 normal
execute at @e[tag=grindcutter] unless block ~ ~1 ~ #grindcutter:ungrindable run fill ~ ~1 ~ ~ ~1 ~ air
execute as @e[tag=grindcutter] at @s unless block ~ ~ ~ minecraft:stonecutter run kill @s
execute as @a[scores={put_stonecutter=1..}] at @s facing entity @s eyes run summon armor_stand ~ ~ ~ {Tags:["ray"],Marker:1,Invulnerable:1,Invisible:1b}
scoreboard players reset @a[scores={put_stonecutter=1..}]
execute as @e[tag=ray,tag=!facingPlayer] at @s run data modify entity @s Rotation set from entity @p Rotation
tag @e[tag=ray,tag=!facingPlayer] add facingPlayer
execute as @e[tag=ray] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=ray] at @s if block ~ ~-1 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~-1 ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~ ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~ ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~1 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~1 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~1 ~ minecraft:stonecutter run kill @e[tag=ray]
execute as @e[tag=ray] at @s if block ~ ~2 ~ minecraft:stonecutter run summon minecraft:armor_stand ~ ~2 ~ {Marker:1b, Tags:["grindcutter"], Invisible:1b}
execute as @e[tag=ray] at @s if block ~ ~2 ~ minecraft:stonecutter run kill @e[tag=ray]