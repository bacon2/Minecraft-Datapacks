effect give @a[tag=cold] minecraft:slowness 8 1 true
execute at @a[tag=cold] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:ice replace minecraft:water
execute at @a[tag=cold] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:obsidian replace minecraft:lava
execute at @a[tag=cold] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:fire
replaceitem entity @a[tag=cold] hotbar.8 minecraft:snowball
execute at @a[tag=cold] run particle minecraft:spit ~ ~ ~ 1 5 1 0.1 1 normal