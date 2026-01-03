#animation mort + mort rapide

execute if score select map matches 1 run execute at @a[scores={position=12..17}] run particle minecraft:soul ~ 19 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select map matches 2 run execute at @a[scores={position=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select map matches 3 run execute at @a[scores={position=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select map matches 4 run execute at @a[scores={position=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force

execute as @a[scores={position=12..17}] run kill @s

#-----------------------------------------------------------------
#detection vie
execute if entity @a[scores={DetectMort=1..,aggroNaga=1..}] run execute as @e[type=zombified_piglin,scores={aggroNaga=1..}] run execute if score @s aggroNaga = @a[scores={aggroNaga=1..,DetectMort=1..},limit=1] aggroNaga run kill @s

execute as @a[scores={DetectMort=1..}] run scoreboard players add @s timer 1

execute as @a[tag=porteurXal,scores={DetectMort=1..,timer=1}] run scoreboard players remove @s vie 1
execute as @a[tag=porteurXal,scores={DetectMort=1..,timer=1}] run tellraw @a[team=!hub] ["",{"selector":"@s"},{"text":", le proteur de ","color":"light_purple"},{"text":"AAA","obfuscated":true,"color":"black"},{"text":" Xal'Atath ","bold":true,"color":"dark_purple"},{"text":"AAA","obfuscated":true,"color":"black"},{"text":" est mort !","color":"light_purple"},{"text":" Il perd 2 vies !","color":"aqua"}]


execute as @a[scores={DetectMort=1..,timer=1},team=!ingenieur] run clear @s
execute as @a[scores={DetectMort=1..,timer=2}] run scoreboard players set @s lienGOD 0
execute as @a[scores={DetectMort=1..,timer=2}] run scoreboard players set @s timeLien 0
execute as @a[scores={DetectMort=1..,timer=2}] run tag @s remove Xal
execute as @a[scores={DetectMort=1..,timer=5..}] run scoreboard players set @s DetectMort 0
execute as @a[scores={timer=5..}] run scoreboard players set @s timer 0

item replace entity @a[scores={DetectMort=1..},team=!assassin,team=!hub,team=!murloc,team=!Chasseur,team=!batisseur] weapon.offhand with air

execute if score select map matches 1 run spreadplayers 6.55 12.44 5 30 false @a[scores={DetectMort=1..,vie=0..6,timer=3}]
execute if score select map matches 2 run spreadplayers 587 96 5 30 false @a[scores={DetectMort=1..,vie=0..6,timer=3},team=!naga]
execute if score select map matches 3 run spreadplayers 1572 108 5 40 false @a[scores={DetectMort=1..,vie=0..6,timer=3}]


#-----------------------------------------------------------------

#systeme mort
execute as @a[scores={vie=0},tag=!mort] run tag @s add mort
clear @a[tag=mort]
gamemode spectator @a[tag=mort]