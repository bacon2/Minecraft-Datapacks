effect give @a[tag=bird] minecraft:jump_boost 8 12 true
execute as @e[type=minecraft:chicken] at @s if entity @a[tag=bird, distance=5..10] run tp @s @a[limit=1, tag=bird, sort=nearest]
execute as @e[type=minecraft:parrot] at @s if entity @a[tag=bird, distance=5..10] run tp @s @a[limit=1, tag=bird, sort=nearest]
execute as @e[type=chicken] if entity @a[tag=bird, distance=5..10] run tp @s @a[tag=bird, limit=1]
replaceitem entity @a[tag=bird] hotbar.8 minecraft:firework_rocket
replaceitem entity @a[tag=bird] hotbar.7 minecraft:egg
replaceitem entity @a[tag=bird] armor.chest minecraft:elytra{Damage:200, Enchantments: [{lvl: 1s, id:"minecraft:vanishing_curse"}, {lvl: 1s, id:"minecraft:binding_curse"}]}
replaceitem entity @a[tag=bird] armor.feet minecraft:netherite_boots{Damage: 0, display: {Name: '{"text":"Talons"}'}, Enchantments: [{lvl: 10s, id: "minecraft:feather_falling"}, {lvl: 1s, id: "minecraft:binding_curse"}, {lvl: 1s, id: "minecraft:vanishing_curse"}]}