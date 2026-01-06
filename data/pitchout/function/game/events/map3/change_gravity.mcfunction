#-------------------------------------- GRAVITATION --------------------------------------------

execute if score eventPartie po.legacy.eventtype matches 8 run execute if entity @a[team=!hub] run scoreboard players add timer po.cd.perturb 1
execute if entity @a[tag=victoire] run scoreboard players set timer po.cd.perturb 0

execute if score timer po.cd.perturb matches 900 run execute as @a[team=!hub,tag=!mort] run execute store result score @s po.legacy.storegrav run random value 1..6
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=1}] run attribute @s generic.gravity base set 0.02
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=2}] run attribute @s generic.gravity base set 0.04
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=3}] run attribute @s generic.gravity base set 0.08
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=4}] run attribute @s generic.gravity base set 0.12
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=5}] run attribute @s generic.gravity base set 0.24
execute if score timer po.cd.perturb matches 900 run execute as @a[scores={po.legacy.storegrav=6}] run attribute @s generic.gravity base set 1


execute if score timer po.cd.perturb matches 1 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\nChangement de "},{"text":"la gravité","bold":true,"color":"aqua"},{"text":" dans "},{"text":"45 secondes !","bold":true,"color":"dark_green"},{"text":"\n\n","bold":true},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 500 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\nChangement de "},{"text":"la gravité","bold":true,"color":"aqua"},{"text":" dans "},{"text":"20 secondes !","bold":true,"color":"gold"},{"text":"\n\n","bold":true},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 700 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\nChangement de "},{"text":"la gravité","bold":true,"color":"aqua"},{"text":" dans "},{"text":"10 secondes !","bold":true,"color":"dark_red"},{"text":"\n\n","bold":true},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=1}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Très Faible) ","color":"dark_green"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=2}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Faible) ","color":"green"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=3}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Normale) ","color":"yellow"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=4}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Forte) ","color":"red"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=5}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Très Forte) ","color":"dark_red"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]
execute if score timer po.cd.perturb matches 900 run tellraw @a[team=!hub,scores={po.legacy.storegrav=6}] ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"},{"text":" Vous changez de gravité","color":"aqua"},{"text":" (Extrême) ","color":"black"},{"text":"AAA","bold":true,"obfuscated":true,"color":"gold"}]

execute if score timer po.cd.perturb matches 1200 run scoreboard players set @a po.legacy.storegrav 0
execute if score timer po.cd.perturb matches 1200 run execute as @a[team=!hub,tag=!mort] run attribute @s generic.gravity base set 0.08
execute if score timer po.cd.perturb matches 1200 run scoreboard players set timer po.cd.perturb 0