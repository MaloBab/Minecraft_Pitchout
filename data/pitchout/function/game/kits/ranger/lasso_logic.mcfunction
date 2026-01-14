#canne à pêche
execute at @e[type=minecraft:fishing_bobber] run execute as @a[distance=..2,tag=!mort,scores={po.use.fishing_rod=0}] run tag @p[scores={po.use.fishing_rod=1..}] add grap
execute at @e[type=minecraft:fishing_bobber] run execute as @e[distance=..2,type=!minecraft:fishing_bobber,type=!minecraft:area_effect_cloud,tag=!mort] run tp @s @p[scores={po.use.fishing_rod=1..}]

#------------------------ADVENCEMENT BARROUD D'HONNEUR-------------------------------------
execute as @a[tag=grabbed,scores={po.legacy.detectmort=0}] run execute at @s run execute unless block ~ ~-1 ~ air run tag @s remove grabbed
execute unless entity @a[tag=grabbed] run tag @a remove grabber
#------------------------------------------------------------------------------------------

execute as @a[scores={po.use.fishing_rod=1..}] run scoreboard players add @s po.timer.fishing_timer 1
execute as @a[scores={po.use.fishing_rod=1..}] run execute if score @s po.timer.fishing_timer matches 25.. run scoreboard players set @s po.timer.fishing_timer 0
execute as @a[scores={po.timer.fishing_timer=25..}] run scoreboard players set @s po.timer.fishing_timer 0