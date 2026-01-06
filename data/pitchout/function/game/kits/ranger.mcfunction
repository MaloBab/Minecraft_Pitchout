#canne à pêche
execute at @e[type=minecraft:fishing_bobber,] run execute as @a[distance=..2,tag=!mort,scores={po.use.rod=0}] run tag @p[scores={po.use.rod=1..}] add grap
execute at @a[scores={po.misc.testfish=1..,po.cos.sound.equiplasso=1,}] run execute as @a[distance=..10] run playsound pitchout:1lasso block @s
execute as @a[scores={po.misc.testfish=1..}] run scoreboard players set @s po.misc.testfish 0


#------------------------ADVENCEMENT BARROUD D'HONNEUR-------------------------------------
execute as @a[scores={po.use.rod=1,po.tech.void_pearl=1}] run tag @s add grabber
execute as @a[tag=grabber] run execute at @e[type=minecraft:fishing_bobber] run execute as @a[distance=..2,tag=!mort,scores={po.use.rod=0}] run tag @s add grabbed
execute if entity @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=2},tag=grabbed] run scoreboard players add @a[tag=grabber] po.adv.barroud 1
#------------------------------------------------------------------------------------------

execute at @e[type=minecraft:fishing_bobber] run execute as @e[distance=..2,type=!minecraft:fishing_bobber,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,tag=!mort] run tp @s @p[scores={po.use.rod=1..}]

#------------------------ADVENCEMENT BARROUD D'HONNEUR-------------------------------------
execute as @a[tag=grabbed,scores={po.legacy.detectmort=0}] run execute at @s run execute unless block ~ ~-1 ~ air run tag @s remove grabbed
execute unless entity @a[tag=grabbed] run tag @a remove grabber
#------------------------------------------------------------------------------------------

execute as @a[scores={po.use.rod=1..}] run scoreboard players add @s po.timer.playertimer 1
execute as @a[scores={po.use.rod=1..}] run execute if score @s po.timer.playertimer matches 25.. run scoreboard players set @s po.use.rod 0
execute as @a[scores={po.timer.playertimer=25..}] run scoreboard players set @s po.timer.playertimer 0