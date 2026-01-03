#fruits des dieux

execute as @a[team=mage,scores={levi=1..}] run scoreboard players add @s creeper 1
execute if entity @a[scores={creeper=1..}] run summon minecraft:creeper 300 41 110 {NoAI:1b,Invulnerable:1b,ExplosionRadius:12,Fuse:30,ignited:1b,active_effects:[{id:"minecraft:levitation",amplifier:3,duration:100}]}

execute if score select map matches 1 run execute as @a[scores={levi=1..},limit=1] run execute if score @s creeper matches 20.. run spreadplayers 6.55 12.44 0 80 false @e[type=minecraft:creeper]
execute if score select map matches 2 run execute as @a[scores={levi=1..},limit=1] run execute if score @s creeper matches 20.. run spreadplayers 587 96 5 80 false @e[type=minecraft:creeper]
execute if score select map matches 3 run execute as @a[scores={levi=1..},limit=1] run execute if score @s creeper matches 20.. run spreadplayers 1572 108 0 120 false @e[type=minecraft:creeper]
execute if score select map matches 4 run execute as @a[scores={levi=1..},limit=1] run execute if score @s creeper matches 20.. run spreadplayers 465 -297 0 120 false @e[type=minecraft:creeper]

execute as @a[scores={levi=1..},limit=1] run execute if score @s creeper matches 41.. run scoreboard players set @s levi 0
execute as @a[scores={creeper=41..}] run scoreboard players set @s creeper 0

#------------------------------------------------------------------------

#artefacts


execute as @a[team=mage,scores={sneak=1..}] run scoreboard players set @s sneak 1
execute as @a[team=mage,scores={grav=0}] run scoreboard players set @s sneak 0

#faire s'envoler un autre joueur
execute as @a[scores={grav=1..,sneak=..0}] run tag @a[scores={grav=0},limit=1,sort=nearest] add grav
execute if entity @a[scores={grav=1..}] run execute as @a[tag=grav,scores={grav=0}] run effect give @s levitation 1 120 true


#se faire s'envoler
execute as @a[scores={grav=1..,sneak=1..}] run tag @s add grav
execute if entity @a[scores={grav=1..}] run execute as @a[tag=grav] run effect give @s levitation 1 120 true
execute as @a[scores={grav=1..}] run scoreboard players set @s grav 0
execute as @a[tag=grav] run tag @s remove grav

#-------------------------------------------------------------------------

#chaines de la domination

execute as @a[scores={flint=1..}] run execute at @s run effect give @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] minecraft:slowness 3 50 true
execute as @a[scores={flint=1..}] run execute at @s run effect give @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] minecraft:jump_boost 3 200 true
execute as @a[scores={flint=1..}] run execute at @s run execute at @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] run particle minecraft:witch ~ ~ ~ 0.9 2 0.9 0.01 300 force
execute as @a[scores={flint=1..}] run scoreboard players set @s flint 0