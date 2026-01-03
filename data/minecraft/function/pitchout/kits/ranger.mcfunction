#canne à pêche
execute at @e[type=minecraft:fishing_bobber,] run execute as @a[distance=..2,tag=!mort,scores={fishing=0}] run tag @p[scores={fishing=1..}] add grap
execute at @a[scores={testfish=1..,equipLassoSon=1,}] run execute as @a[distance=..10] run playsound pitchout:1lasso block @s
execute as @a[scores={testfish=1..}] run scoreboard players set @s testfish 0


#------------------------ADVENCEMENT BARROUD D'HONNEUR-------------------------------------
execute as @a[scores={fishing=1,enderVoid=1}] run tag @s add grabber
execute as @a[tag=grabber] run execute at @e[type=minecraft:fishing_bobber] run execute as @a[distance=..2,tag=!mort,scores={fishing=0}] run tag @s add grabbed
execute if entity @a[scores={DetectMort=1..,timer=2},tag=grabbed] run scoreboard players add @a[tag=grabber] advBarroud 1
#------------------------------------------------------------------------------------------

execute at @e[type=minecraft:fishing_bobber] run execute as @e[distance=..2,type=!minecraft:fishing_bobber,type=!minecraft:area_effect_cloud,type=!minecraft:armor_stand,tag=!mort] run tp @s @p[scores={fishing=1..}]

#------------------------ADVENCEMENT BARROUD D'HONNEUR-------------------------------------
execute as @a[tag=grabbed,scores={DetectMort=0}] run execute at @s run execute unless block ~ ~-1 ~ air run tag @s remove grabbed
execute unless entity @a[tag=grabbed] run tag @a remove grabber
#------------------------------------------------------------------------------------------

execute as @a[scores={fishing=1..}] run scoreboard players add @s PlayerTimer 1
execute as @a[scores={fishing=1..}] run execute if score @s PlayerTimer matches 25.. run scoreboard players set @s fishing 0
execute as @a[scores={PlayerTimer=25..}] run scoreboard players set @s PlayerTimer 0