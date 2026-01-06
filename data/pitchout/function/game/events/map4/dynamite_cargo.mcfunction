execute if score eventPartie po.legacy.eventtype matches 11 run execute if entity @a[team=!hub] run scoreboard players add TNT po.cd.perturb 1
execute if score TNT po.cd.perturb matches 100 run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" Nouveau ","color":"gold"},{"text":"transport d'explosifs","bold":true,"color":"gold"},{"text":" dans ","color":"gold"},{"text":"10 secondes !","bold":true,"color":"red"}]
execute if score TNT po.cd.perturb matches 300 run tag @r[tag=!mort,team=!hub] add TNT
execute if score TNT po.cd.perturb matches 300 run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" ","bold":true,"color":"gold"},{"selector":"@a[tag=TNT,limit=1]","bold":true,"color":"aqua"},{"text":" t","bold":true},{"text":"ransporte "},{"text":"des explosifs !","color":"red"}]
execute if score TNT po.cd.perturb matches 900 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" La bombe","bold":true,"color":"red"},{"text":" explosera dans "},{"text":"30 secondes !","bold":true,"color":"gold"},{"text":" \u26a0","color":"red"}]
execute if score TNT po.cd.perturb matches 1300 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" La bombe","bold":true,"color":"red"},{"text":" explosera dans "},{"text":"10 secondes !","bold":true,"color":"dark_red"},{"text":" \u26a0","color":"red"}]
execute if score TNT po.cd.perturb matches 1400 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" 5","bold":true,"color":"dark_red"}]
execute if score TNT po.cd.perturb matches 1420 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" 4","bold":true,"color":"dark_red"}]
execute if score TNT po.cd.perturb matches 1440 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" 3","bold":true,"color":"dark_red"}]
execute if score TNT po.cd.perturb matches 1460 run tellraw @a[team=!hub] ["",{"text":"\u26a0","color":"red"},{"text":" 2","bold":true,"color":"dark_red"}]
execute if score TNT po.cd.perturb matches 1480 run tellraw @a[team=!hub] ["",{"text":"\u2620","color":"red"},{"text":" 1","bold":true,"color":"dark_red"}]
execute if score TNT po.cd.perturb matches 1500 at @a[tag=TNT,limit=1] run particle explosion ~ ~1 ~ 0.7 1 0.7 1 20 force @a
execute if score TNT po.cd.perturb matches 1500 at @a[tag=TNT,limit=1] run playsound entity.generic.explode block @a[distance=..80] ~ ~ ~ 1
execute if score TNT po.cd.perturb matches 1500 as @a[tag=TNT,limit=1] run kill @s
execute if score TNT po.cd.perturb matches 1500.. run scoreboard players set TNT po.cd.perturb 99
execute if entity @a[tag=victoire] run scoreboard players set TNT po.cd.perturb 0
execute if entity @a[tag=victoire] run tag @a remove TNT
execute if entity @a[tag=TNT] run item replace entity @a[tag=TNT] armor.head with tnt 1
execute if entity @a[tag=TNT] run item replace entity @a[tag=!TNT,team=!murloc] armor.head with air 1
execute if entity @a[tag=TNT] run item replace entity @a[tag=!TNT,team=murloc,scores={po.use.peau=0}] armor.head with air 1

