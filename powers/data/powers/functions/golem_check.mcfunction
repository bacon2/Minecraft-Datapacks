effect give @a[tag=golem] minecraft:slowness 8 1 true
effect give @a[tag=golem] minecraft:hero_of_the_village 8 0 true
effect give @a[tag=golem] minecraft:strength 8 1 true
execute as @a[tag=golem,scores={damage_dealt=1..}] at @s run execute as @e[distance=..4] run function powers:golem_power
replaceitem entity @a[tag=golem] armor.head minecraft:iron_helmet{Damage:150, Enchantments: [{lvl: 1s, id:"minecraft:vanishing_curse"}, {lvl: 1s, id:"minecraft:binding_curse"}, {lvl: 3s, id:"minecraft:protection"}]}
replaceitem entity @a[tag=golem] armor.chest minecraft:iron_chestplate{Damage:230, Enchantments: [{lvl: 1s, id:"minecraft:vanishing_curse"}, {lvl: 1s, id:"minecraft:binding_curse"}, {lvl: 3s, id:"minecraft:protection"}]}
replaceitem entity @a[tag=golem] armor.legs minecraft:iron_leggings{Damage:200, Enchantments: [{lvl: 1s, id:"minecraft:vanishing_curse"}, {lvl: 1s, id:"minecraft:binding_curse"}, {lvl: 3s, id:"minecraft:protection"}]}
replaceitem entity @a[tag=golem] armor.feet minecraft:iron_boots{Damage:180, Enchantments: [{lvl: 1s, id:"minecraft:vanishing_curse"}, {lvl: 1s, id:"minecraft:binding_curse"}, {lvl: 3s, id:"minecraft:protection"}]}