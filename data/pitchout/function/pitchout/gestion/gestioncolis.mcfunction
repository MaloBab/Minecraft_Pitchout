#affichage colis

execute store result score lifetime timeCible run data get entity @e[type=pitchout:area_effect_cloud,tag=Cible,limit=1] Age 1
execute if entity @a[tag=victoire] run scoreboard players set eventPartie eventType 0
execute if entity @a[tag=victoire] run data modify entity @e[type=pitchout:area_effect_cloud,tag=Cible,limit=1] Age set value 605
execute as @a[scores={cible=1..}] run data modify entity @e[type=pitchout:area_effect_cloud,tag=Cible,limit=1] Age set value 604
execute as @a[scores={cible=1..}] run tellraw @a ["",{"selector":"@a[scores={cible=1..}]","bold":true,"color":"aqua"},{"text":" a récupéré le COLIS !","bold":true,"color":"gold"}]
execute if score lifetime timeCible matches 605 run execute at @e[type=pitchout:area_effect_cloud,tag=Cible] run setblock ~ ~ ~ air replace


execute if score eventPartie eventType matches 2 run execute if entity @a[team=!hub,gamemode=!creative] run scoreboard players add timer timeCible 1
execute if score timer timeCible matches 1 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Apparition du ","bold":true,"color":"dark_aqua"},{"text":"COLIS","bold":true,"color":"gold"},{"text":" dans ","bold":true,"color":"dark_aqua"},{"text":"2 minutes !","bold":true,"color":"green"},{"text":" ::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"}]
execute if score timer timeCible matches 1200 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Apparition du ","bold":true,"color":"dark_aqua"},{"text":"COLIS","bold":true,"color":"gold"},{"text":" dans ","bold":true,"color":"dark_aqua"},{"text":"60 secondes !","bold":true,"color":"green"},{"text":" ::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"}]
execute if score timer timeCible matches 2200 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Apparition du ","bold":true,"color":"dark_aqua"},{"text":"COLIS","bold":true,"color":"gold"},{"text":" dans ","bold":true,"color":"dark_aqua"},{"text":"10 secondes !","bold":true,"color":"dark_red"},{"text":" ::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"light_purple"}]
execute if score timer timeCible matches 2400 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"gold"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"dark_green"},{"text":" UN ","bold":true,"color":"dark_red"},{"text":"COLIS","bold":true,"color":"gold"},{"text":" EST APPARU !","bold":true,"color":"dark_red"},{"text":" ::::","color":"dark_green"},{"text":"\n"},{"text":"30 secondes avant disparition...","color":"aqua"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-","color":"gold"}]
execute if score timer timeCible matches 2400 run summon pitchout:area_effect_cloud -8 9 15 {Duration:610,Tags:["Cible"]}
execute if score timer timeCible matches 2401 run spreadplayers 6.55 12.44 10 48 false @e[type=pitchout:area_effect_cloud,tag=Cible,limit=1]
execute if score timer timeCible matches 2402 run execute at @e[type=pitchout:area_effect_cloud,tag=Cible] run tp @e[type=pitchout:area_effect_cloud,tag=Cible] ~ 32 ~
execute if score timer timeCible matches 2403 run execute at @e[type=pitchout:area_effect_cloud,tag=Cible] run setblock ~ ~ ~ pitchout:target
execute if score lifetime timeCible matches 605 run execute at @e[type=pitchout:area_effect_cloud,tag=Cible] run setblock ~ ~ ~ air replace
execute if score timer timeCible matches 2405 run scoreboard players set timer timeCible 2

execute at @e[type=pitchout:area_effect_cloud,tag=Cible] run particle pitchout:wax_on ~ ~0.4 ~ 0.03 9 0.03 0.6 100 force
#---------------------------------------------------------
#fonctionnement colis


execute if entity @a[scores={cible=1..}] run execute store result score alea timeCible run random value 1..10
execute as @a[scores={cible=1..}] run scoreboard players operation @s timeCible = alea timeCible
execute as @a[scores={timeCible=1..}] run scoreboard players set @s cible 0


execute as @a[scores={timeCible=1}] run effect give @s pitchout:speed 19 20 true
execute as @a[scores={timeCible=1}] run tellraw @s ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" Tu bois des vitamines et cours beaucoup plus vite pendant 20 secondes ! ","bold":true,"color":"dark_green"},{"text":"==","bold":true,"color":"light_purple"}]
execute if entity @a[scores={timeCible=1}] run tellraw @a[scores={timeCible=0}] ["",{"selector":"@a[scores={timeCible=1}]","bold":true,"color":"aqua"},{"text":" a reçu sa dose de vitamines !!!","bold":true,"color":"dark_green"}]
execute as @a[scores={timeCible=1}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=2}] run effect give @a[scores={timeCible=0}] pitchout:levitation 15 1 true
execute as @a[scores={timeCible=2}] run tellraw @a[team=!hub] ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" COLIS récupéré !","bold":true,"color":"gold"},{"text":" Tous les autres joueurs lévitent pendant 15 secondes ","bold":true,"color":"dark_green"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=2}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=3}] run item replace entity @s hotbar.0 with pitchout:wooden_shovel[pitchout:unbreakable={},pitchout:enchantments={levels:{"pitchout:knockback":3},show_in_tooltip:false},pitchout:custom_name='[{"text":"BOONNNKK Cassée","bold":true,"color":"black"}]',pitchout:lore=['[{"text":"Votre pelle mériterait une petite réparation...","color":"gold"}]']] 1
execute as @a[scores={timeCible=3}] run item replace entity @s hotbar.1 with pitchout:bow[pitchout:unbreakable={},pitchout:enchantments={levels:{"pitchout:punch":3},show_in_tooltip:false},pitchout:custom_name='[{"text":"VLAN Cassé","bold":true,"color":"black"}]',pitchout:lore=['[{"text":"Votre arc mériterait une petite réparation...","color":"gold"}]']] 1
execute as @a[scores={timeCible=3}] run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"aqua"},{"selector":"@a[scores={timeCible=3}]","bold":true,"color":"aqua"},{"text":" a fait un peu trop de zèle et ses armes ont cassé... Elles seront beaucoup moins efficasses jusqu'à sa prochaine mort... ","bold":true,"color":"dark_red"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=3}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=4}] run tp @s 3 25 12
execute as @a[scores={timeCible=4}] run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"aqua"},{"selector":"@a[scores={timeCible=4}]","bold":true,"color":"aqua"},{"text":" a laissé tombé le colis... en voulant le ratraper, le colis a explosé et envoyé ","bold":true,"color":"dark_red"},{"selector":"@a[scores={timeCible=4}]","bold":true,"color":"aqua"},{"text":" au dessus du vide ! ","bold":true,"color":"dark_red"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=4}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=5}] run scoreboard players add epee timeCible 1
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 1 run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"aqua"},{"selector":"@a[scores={timeCible=5}]","bold":true,"color":"aqua"},{"text":" a l'épée de Damocles entre ses mains et va executer un joueur aléatoire...","bold":true,"color":"dark_green"},{"text":" ==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 41 run tellraw @a ["",{"text":"A","obfuscated":true,"color":"gray"},{"text":" Le joueur","color":"red"},{"text":" exécuté est","color":"dark_red"},{"text":"... ","color":"black"},{"text":"A","obfuscated":true,"color":"gray"}]
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 43 run tag @r[scores={timeCible=0,vie=1..},team=!hub] add damocles
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 73 run tellraw @a ["",{"text":"A","bold":true,"obfuscated":true,"color":"gray"},{"text":" ","bold":true,"color":"red"},{"selector":"@a[tag=damocles]","bold":true,"color":"red"},{"text":" ! ","bold":true,"color":"dark_red"},{"text":"A","bold":true,"obfuscated":true,"color":"gray"}]
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 75 run execute at @a[tag=damocles] run summon pitchout:lightning_bolt ~ ~ ~
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 75 run execute as @a[tag=damocles] run kill @s
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 75 run execute as @a[tag=damocles] run tag @s remove damocles
execute as @a[scores={timeCible=5}] run execute if score epee timeCible matches 76 run execute as @a[scores={timeCible=1..}] run scoreboard players set @s timeCible 0
execute if score epee timeCible matches 77.. run scoreboard players set epee timeCible 0

execute as @a[scores={timeCible=6}] run tag @r[scores={timeCible=0},tag=!mort] add changeKit
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=0}] run execute store result score alea changeKit run random value 1..4
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=1}] run execute store result score alea changeKit run random value 1..5
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=2}] run execute store result score alea changeKit run random value 1..6
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=3}] run execute store result score alea changeKit run random value 1..7
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=4}] run execute store result score alea changeKit run random value 1..8
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=5}] run execute store result score alea changeKit run random value 1..9
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=6}] run execute store result score alea changeKit run random value 1..10
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=7}] run execute store result score alea changeKit run random value 1..11
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=8}] run execute store result score alea changeKit run random value 1..12
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=9}] run execute store result score alea changeKit run random value 1..13
execute if entity @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit,scores={kit=10..}] run execute store result score alea changeKit run random value 1..14


execute as @a[tag=changeKit] run execute if score alea changeKit matches 1 run team join ranger @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 2 run team join forestier @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 3 run team join mage @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 4 run team join guerrier @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 5 run team join necromancien @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 6 run team join chevalier @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 7 run team join chaman @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 8 run team join druide @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 9 run team join fantome @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 10 run team join batisseur @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 11 run team join murloc @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 12 run team join assassin @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 13 run team join Chasseur @s
execute as @a[tag=changeKit] run execute if score alea changeKit matches 14 run team join GOD @s

execute as @a[scores={timeCible=6}] run execute if entity @a[tag=changeKit] run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"aqua"},{"selector":"@a[scores={timeCible=6}]","bold":true,"color":"aqua"},{"text":" propose une reconvertion professionelle à ","bold":true,"color":"dark_green"},{"selector":"@a[tag=changeKit]","bold":true,"color":"red"},{"text":" il changera de classe à sa prochaine mort... Ou pas... ","bold":true,"color":"dark_green"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=6}] run scoreboard players set @s timeCible 0
execute if entity @a[tag=changeKit] run tag @a remove changeKit

execute as @a[scores={timeCible=7}] run effect give @a[scores={timeCible=0}] pitchout:glowing 60 0 true
execute as @a[scores={timeCible=7}] run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"aqua"},{"selector":"@a[scores={timeCible=7}]","bold":true,"color":"aqua"},{"text":" a ouvert le colis mais a fait exploser une grenade flash... ","bold":true,"color":"dark_green"},{"text":"Tout le monde brille","bold":true,"color":"light_purple"},{"text":" pendant","bold":true,"color":"dark_green"},{"text":" 1 minutes","bold":true,"color":"blue"},{"text":"... Sauf lui étonnament... ","bold":true,"color":"dark_green"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=7}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=8}] run scoreboard players add block timeCible 1
execute as @a[scores={timeCible=8}] run execute if score block timeCible matches 1 run tellraw @a[scores={timeCible=0}] ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" tout le monde","bold":true,"color":"blue"},{"text":" va être ","bold":true,"color":"aqua"},{"text":"téléporté au millieu dans 3 secondes","bold":true,"color":"red"},{"text":" et seul l'acquéreur du colis n'est pas au courant...","bold":true,"color":"dark_green"},{"text":" préparez vous !","color":"dark_green"},{"text":" ==","bold":true,"color":"light_purple"},{"text":" "}]
execute as @a[scores={timeCible=8}] run execute if score block timeCible matches 1 run tellraw @s ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" Dommage...","bold":true,"color":"dark_red"},{"text":" Il ne s'est rien passé... on ne peux pas avoir de la chance à tout les coups... ","bold":true,"color":"red"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=8}] run execute if score block timeCible matches 70 run setblock 6 16 12 pitchout:sandstone
execute as @a[scores={timeCible=8}] run execute if score block timeCible matches 71 run tp @a 6 17.2 12
execute as @a[scores={timeCible=8}] run execute if score block timeCible matches 150 run setblock 6 16 12 pitchout:air replace
execute if score block timeCible matches 151.. run execute as @a[scores={timeCible=1..}] run scoreboard players set @s timeCible 0
execute if score block timeCible matches 151.. run scoreboard players set block timeCible 0

execute as @a[scores={timeCible=9}] run effect give @s pitchout:blindness 6 20 true
execute as @a[scores={timeCible=9}] run effect give @s pitchout:nausea 12 20 true
execute as @a[scores={timeCible=9}] run tellraw @a[team=!hub] ["",{"selector":"@a[scores={timeCible=9}]","bold":true,"color":"aqua"},{"text":" est malencontreusement tombé malade... Il est aveugle et nauséeux pendant quelques secondes...","bold":true,"color":"dark_red"}]
execute as @a[scores={timeCible=9}] run scoreboard players set @s timeCible 0

execute as @a[scores={timeCible=10}] run tellraw @a ["",{"text":"==","bold":true,"color":"light_purple"},{"text":" Dommage...","bold":true,"color":"dark_red"},{"text":" Il ne s'est rien passé... on ne peux pas avoir de la chance à tout les coups... ","bold":true,"color":"red"},{"text":"==","bold":true,"color":"light_purple"}]
execute as @a[scores={timeCible=10}] run scoreboard players set @s timeCible 0
