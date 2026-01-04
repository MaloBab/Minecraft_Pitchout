execute store result score nb po.win.detectwin run execute if entity @a[team=!hub,tag=!mort,gamemode=!creative]
execute if entity @a[tag=victoire] run scoreboard players add timer po.win.detectwin 1

execute if score nb po.win.detectwin matches 1 run tag @a[tag=!mort,gamemode=!creative,team=!hub] add victoire

execute if entity @a[tag=victoire] run data modify entity @e[type=minecraft:area_effect_cloud,tag=Cible,limit=1] Age set value 604
execute if entity @a[tag=victoire] run data modify entity @e[type=minecraft:area_effect_cloud,tag=OTV,limit=1] Age set value 608
execute if entity @a[tag=victoire] run kill @e[type=minecraft:item_frame]
execute if entity @a[tag=victoire] run execute at @e[type=minecraft:area_effect_cloud,tag=mirroir] run fill ~ ~ ~ ~ ~ ~ air replace
execute if entity @a[tag=victoire] run kill @e[type=minecraft:area_effect_cloud,tag=mirroir]
execute if entity @a[tag=victoire] run kill @e[type=minecraft:area_effect_cloud,tag=mine]
execute if entity @a[tag=victoire] run kill @e[type=item]
execute if entity @a[tag=victoire] run execute as @e[type=minecraft:armor_stand,tag=Select] run scoreboard players reset @s po.timer.plan
execute if entity @a[tag=victoire] run scoreboard players set @a po.stat.gold_picked 0
execute if entity @a[tag=victoire] run scoreboard players set @a po.use.liengod 0
execute if entity @a[tag=victoire] run scoreboard players set @a po.use.bloodlink 0
execute if entity @a[tag=victoire] run scoreboard players set @a po.cd.lien 0
execute if entity @a[tag=victoire] run tag @a remove sneak
execute if entity @a[tag=victoire] run tag @a remove lien
execute if entity @a[tag=victoire] run tag @a add finGame
execute if entity @a[tag=victoire] run scoreboard players set @a po.legacy.storegrav 0 
execute if entity @a[tag=victoire] run scoreboard players set @a po.cd.perturb 0 
execute if entity @a[tag=victoire] run execute as @a run attribute @s generic.gravity base set 0.08
execute if entity @a[tag=victoire] run scoreboard players set timer po.cd.obj_angelique 0
execute if entity @a[tag=victoire] run scoreboard players set hotel po.cd.obj_angelique 0

execute if score timer po.win.detectwin matches 1..30 run title @a title ["",{"text":"Victoire de","color":"gold"},{"text":" ","color":"light_purple"},{"selector":"@a[tag=victoire]","color":"light_purple"}]
execute if score timer po.win.detectwin matches 1..30 run title @a subtitle {"text":"Bien joué à lui !","color":"dark_aqua"}




execute if score timer po.win.detectwin matches 3 run function pitchout:pitchout/gestion/ajoutvictoire
execute if score select po.map.vote_id matches 2 run execute if score timer po.win.detectwin matches 29 run kill @e[type=area_effect_cloud,tag=water]
execute if score select po.map.vote_id matches 2 run execute if score timer po.win.detectwin matches 29 run fill 648 37 161 544 84 37 air replace minecraft:water
execute if score select po.map.vote_id matches 2 run execute if score timer po.win.detectwin matches 29 run fill 648 37 161 544 84 37 air replace minecraft:structure_void
execute if score timer po.win.detectwin matches 30 run scoreboard players set @a po.tech.remaining_lives 6
execute if score timer po.win.detectwin matches 30 run scoreboard players set @a po.use.pearl_game 0
execute if score timer po.win.detectwin matches 30 run execute as @a[tag=victoire] run scoreboard players add @s po.coins 20
execute if score timer po.win.detectwin matches 30 run scoreboard players add @a[tag=victoire] po.win.total 1
execute if score timer po.win.detectwin matches 30 run kill @e[type=!minecraft:player,type=!armor_stand]
execute if score timer po.win.detectwin matches 30 run kill @e[type=armor_stand,tag=TOTEM]
execute if score timer po.win.detectwin matches 30 run tp @a[team=!hub] 300 48.2 100
execute if score timer po.win.detectwin matches 30 run team join hub @a
execute if score timer po.win.detectwin matches 30 run function pitchout:pitchout/gestion/nettoyage
execute if score timer po.win.detectwin matches 30 run scoreboard players set timer po.win.detectwin 0