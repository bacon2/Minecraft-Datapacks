tellraw @a[distance=..40] {"text":"Congratulations! You have defeated the kqitzul"}
playsound minecraft:music_disc.stal master @a[distance=..40] ~ ~ ~ 1 2 1
xp add @a[distance=..40] 2000 points
kill @e[type=vex, distance=..80]
kill @e[tag=kqitzul, distance=..5]