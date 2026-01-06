tag @a[team=hub] remove rmXal
tag @a[team=hub] remove clock
tag @a[team=hub] remove porteurXal
tag @a[team=hub] remove Xal
tag @a[team=hub] remove antiTP
tag @a[team=hub] remove naga
tag @a[team=hub] remove CibleArmee
tag @a[team=hub] remove sneak
tag @a[team=hub] remove visionVIE
tag @a[team=hub] remove getVision
tag @a[team=hub] remove totem
tag @a[team=hub] remove racine
tag @a[team=hub] remove slow
tag @a[team=hub] remove air
tag @a[team=hub] remove RESU
tag @a[team=hub] remove RESURECT
tag @a[team=hub] remove util
tag @a[team=hub] remove execute
tag @a[team=hub] remove CibleC

execute store result score lifetime po.cd.cible run data get entity @e[type=minecraft:area_effect_cloud,tag=Cible,limit=1] Age 1
execute if score lifetime po.cd.cible matches 605 run execute at @e[type=minecraft:area_effect_cloud,tag=Cible] run setblock ~ ~ ~ air replace
scoreboard players set @a[team=hub] po.legacy.qtb 16
scoreboard players set @a[team=hub] po.use.build_wand 0

tag @a[team=hub] remove mort
tag @a[team=hub] remove victoire