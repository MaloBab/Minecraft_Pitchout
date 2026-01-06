#animation mort + mort rapide

execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 19 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force

execute as @a[scores={po.tech.pos_hp=12..17}] run kill @s

#-----------------------------------------------------------------
#detection vie
execute if entity @a[scores={po.legacy.detectmort=1..,po.legacy.aggronaga=1..}] run execute as @e[type=zombified_piglin,scores={po.legacy.aggronaga=1..}] run execute if score @s po.legacy.aggronaga = @a[scores={po.legacy.aggronaga=1..,po.legacy.detectmort=1..},limit=1] po.legacy.aggronaga run kill @s

execute as @a[scores={po.legacy.detectmort=1..}] run scoreboard players add @s po.tech.global_timer 1

execute as @a[tag=porteurXal,scores={po.legacy.detectmort=1..,po.tech.global_timer=1}] run scoreboard players remove @s po.tech.remaining_lives 1
execute as @a[tag=porteurXal,scores={po.legacy.detectmort=1..,po.tech.global_timer=1}] run tellraw @a[team=!hub] ["",{"selector":"@s"},{"text":", le proteur de ","color":"light_purple"},{"text":"AAA","obfuscated":true,"color":"black"},{"text":" Xal'Atath ","bold":true,"color":"dark_purple"},{"text":"AAA","obfuscated":true,"color":"black"},{"text":" est mort !","color":"light_purple"},{"text":" Il perd 2 vies !","color":"aqua"}]


execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=1},team=!ingenieur] run clear @s
execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=2}] run scoreboard players set @s po.use.liengod 0
execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=2}] run scoreboard players set @s po.cd.lien 0
execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=2}] run tag @s remove Xal
execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=5..}] run scoreboard players set @s po.legacy.detectmort 0
execute as @a[scores={po.tech.global_timer=5..}] run scoreboard players set @s po.tech.global_timer 0

item replace entity @a[scores={po.legacy.detectmort=1..},team=!assassin,team=!hub,team=!murloc,team=!Chasseur,team=!batisseur] weapon.offhand with air

execute if score select po.map.vote_id matches 1 run spreadplayers 6.55 12.44 5 30 false @a[scores={po.legacy.detectmort=1..,po.tech.remaining_lives=0..6,po.tech.global_timer=3}]
execute if score select po.map.vote_id matches 2 run spreadplayers 587 96 5 30 false @a[scores={po.legacy.detectmort=1..,po.tech.remaining_lives=0..6,po.tech.global_timer=3},team=!naga]
execute if score select po.map.vote_id matches 3 run spreadplayers 1572 108 5 40 false @a[scores={po.legacy.detectmort=1..,po.tech.remaining_lives=0..6,po.tech.global_timer=3}]


#-----------------------------------------------------------------

#systeme mort
execute as @a[scores={po.tech.remaining_lives=0},tag=!mort] run tag @s add mort
clear @a[tag=mort]
gamemode spectator @a[tag=mort]