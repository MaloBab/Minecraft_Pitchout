#------- Data des entités -------#
data modify entity @e[type=minecraft:area_effect_cloud,tag=Cible,limit=1] Age set value 604
data modify entity @e[type=minecraft:area_effect_cloud,tag=OTV,limit=1] Age set value 608

#------- Reset des scores -------#

scoreboard players set @a po.legacy.storegrav 0 
scoreboard players set @a po.cd.perturb 0 
scoreboard players set timer po.cd.obj_angelique 0
scoreboard players set autel po.cd.obj_angelique 0
scoreboard players set @a po.stat.gold_picked 0
scoreboard players set @a po.use.liengod 0
scoreboard players set @a po.use.bloodlink 0
scoreboard players set @a po.cd.lien 0
scoreboard players set @a po.use.pearl_game 0
execute as @a[team=!Chasseur] run scoreboard players set @s po.cd.arbalete 0 

scoreboard players set @a po.tech.remaining_lives 6

execute as @e[type=minecraft:armor_stand,tag=Select] run scoreboard players reset @s po.timer.plan

#------- Reset des entités -------#
execute at @e[type=minecraft:area_effect_cloud,tag=mirroir] run fill ~ ~ ~ ~ ~ ~ air replace
execute if score select po.map.vote_id matches 2 if entity @e[type=area_effect_cloud,tag=water] run kill @e[type=area_effect_cloud,tag=water]

kill @e[type=!minecraft:player,type=!armor_stand]
kill @e[type=armor_stand,tag=TOTEM]

execute as @a run attribute @s generic.gravity base set 0.08

tag @a remove sneak
tag @a remove lien



