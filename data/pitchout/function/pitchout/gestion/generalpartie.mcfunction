
execute as @e run execute store result score @s couche run data get entity @s Pos[1] 1


#point de spawn

execute if score select map matches 1 run spawnpoint @a[scores={vie=5}] 24 16 7
execute if score select map matches 2 run spawnpoint @a[scores={vie=5}] 596 46 83
execute if score select map matches 3 run spawnpoint @a[scores={vie=5}] 1572 46 108
execute if score select map matches 4 run spawnpoint @a[scores={vie=5}] 465 65 -297
title @a times 0 80 0

#---------------------------------------------------------
#kill des entites inutiles

kill @e[type=pitchout:item,tag=!vide,nbt=!{Item:{id:"pitchout:iron_nugget"}},nbt=!{Item:{id:"pitchout:creeper_banner_pattern"}},nbt=!{Item:{id:"pitchout:globe_banner_pattern"}},nbt=!{Item:{id:"pitchout:flower_banner_pattern"}},nbt=!{Item:{id:"pitchout:piglin_banner_pattern"}},nbt=!{Item:{id:"pitchout:skull_banner_pattern"}},nbt=!{Item:{id:"pitchout:mojang_banner_pattern"}}]
kill @e[type=pitchout:arrow,nbt={inGround:1b},tag=!mouv,tag=!Vis,tag=!Bar,tag=!Ftp,tag=!Ftp2]

#---------------------------------------------------------

#ajout role de base

execute if score select map matches 1 run execute positioned 0 0 0 run team join ranger @a[distance=..200,team=hub,scores={ranger=0,forestier=0,mage=0,guerrier=0,necromancien=0,chevalier=0,chaman=0,druide=0,fantomeK=0,batisseur=0,murloc=0,assassinK=0,chasseurGG=0,MaitreM=0,ingenieur=0}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join ranger @a[distance=..120,team=hub,scores={ranger=0,forestier=0,mage=0,guerrier=0,necromancien=0,chevalier=0,chaman=0,druide=0,fantomeK=0,batisseur=0,murloc=0,assassinK=0,chasseurGG=0,MaitreM=0,ingenieur=0}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join ranger @a[distance=..200,team=hub,scores={ranger=0,forestier=0,mage=0,guerrier=0,necromancien=0,chevalier=0,chaman=0,druide=0,fantomeK=0,batisseur=0,murloc=0,assassinK=0,chasseurGG=0,MaitreM=0,ingenieur=0}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join ranger @a[distance=..200,team=hub,scores={ranger=0,forestier=0,mage=0,guerrier=0,necromancien=0,chevalier=0,chaman=0,druide=0,fantomeK=0,batisseur=0,murloc=0,assassinK=0,chasseurGG=0,MaitreM=0,ingenieur=0}]

#---------------------------------------------------------

#ajout team
execute if score select map matches 1 run execute positioned 0 0 0 run team join ranger @a[distance=..200,team=hub,scores={ranger=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join forestier @a[distance=..200,team=hub,scores={forestier=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join mage @a[distance=..200,team=hub,scores={mage=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join guerrier @a[distance=..200,team=hub,scores={guerrier=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join necromancien @a[distance=..200,team=hub,scores={necromancien=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join chevalier @a[distance=..200,team=hub,scores={chevalier=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join chaman @a[distance=..200,team=hub,scores={chaman=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join druide @a[distance=..200,team=hub,scores={druide=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join fantome @a[distance=..200,team=hub,scores={fantomeK=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join murloc @a[distance=..200,team=hub,scores={murloc=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join batisseur @a[distance=..200,team=hub,scores={batisseur=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join assassin @a[distance=..200,team=hub,scores={assassinK=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join Chasseur @a[distance=..200,team=hub,scores={chasseurGG=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join GOD @a[distance=..200,team=hub,scores={MaitreM=1}]
execute if score select map matches 1 run execute positioned 0 0 0 run team join ingenieur @a[distance=..200,team=hub,scores={ingenieur=1}]


execute if score select map matches 2 run execute positioned 596 46 83 run team join ranger @a[distance=..80,team=hub,scores={ranger=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join forestier @a[distance=..80,team=hub,scores={forestier=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join mage @a[distance=..80,team=hub,scores={mage=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join guerrier @a[distance=..80,team=hub,scores={guerrier=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join necromancien @a[distance=..80,team=hub,scores={necromancien=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join chevalier @a[distance=..80,team=hub,scores={chevalier=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join chaman @a[distance=..80,team=hub,scores={chaman=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join druide @a[distance=..80,team=hub,scores={druide=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join fantome @a[distance=..80,team=hub,scores={fantomeK=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join murloc @a[distance=..80,team=hub,scores={murloc=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join batisseur @a[distance=..80,team=hub,scores={batisseur=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join assassin @a[distance=..80,team=hub,scores={assassinK=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join Chasseur @a[distance=..80,team=hub,scores={chasseurGG=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join GOD @a[distance=..80,team=hub,scores={MaitreM=1}]
execute if score select map matches 2 run execute positioned 596 46 83 run team join ingenieur @a[distance=..80,team=hub,scores={ingenieur=1}]


execute if score select map matches 3 run execute positioned 1572 46 108 run team join ranger @a[distance=..200,team=hub,scores={ranger=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join forestier @a[distance=..200,team=hub,scores={forestier=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join mage @a[distance=..200,team=hub,scores={mage=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join guerrier @a[distance=..200,team=hub,scores={guerrier=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join necromancien @a[distance=..200,team=hub,scores={necromancien=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join chevalier @a[distance=..200,team=hub,scores={chevalier=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join chaman @a[distance=..200,team=hub,scores={chaman=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join druide @a[distance=..200,team=hub,scores={druide=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join fantome @a[distance=..200,team=hub,scores={fantomeK=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join murloc @a[distance=..200,team=hub,scores={murloc=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join batisseur @a[distance=..200,team=hub,scores={batisseur=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join assassin @a[distance=..200,team=hub,scores={assassinK=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join Chasseur @a[distance=..200,team=hub,scores={chasseurGG=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join GOD @a[distance=..200,team=hub,scores={MaitreM=1}]
execute if score select map matches 3 run execute positioned 1572 46 108 run team join ingenieur @a[distance=..200,team=hub,scores={ingenieur=1}]


execute if score select map matches 4 run execute positioned 465 65 -297 run team join ranger @a[distance=..200,team=hub,scores={ranger=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join forestier @a[distance=..200,team=hub,scores={forestier=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join mage @a[distance=..200,team=hub,scores={mage=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join guerrier @a[distance=..200,team=hub,scores={guerrier=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join necromancien @a[distance=..200,team=hub,scores={necromancien=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join chevalier @a[distance=..200,team=hub,scores={chevalier=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join chaman @a[distance=..200,team=hub,scores={chaman=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join druide @a[distance=..200,team=hub,scores={druide=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join fantome @a[distance=..200,team=hub,scores={fantomeK=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join murloc @a[distance=..200,team=hub,scores={murloc=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join batisseur @a[distance=..200,team=hub,scores={batisseur=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join assassin @a[distance=..200,team=hub,scores={assassinK=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join Chasseur @a[distance=..200,team=hub,scores={chasseurGG=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join GOD @a[distance=..200,team=hub,scores={MaitreM=1}]
execute if score select map matches 4 run execute positioned 465 65 -297 run team join ingenieur @a[distance=..200,team=hub,scores={ingenieur=1}]

#---------------------------------------------------------
#reinitialisation scores de selections
scoreboard players set @a[team=!hub] ranger 0
scoreboard players set @a[team=!hub] forestier 0
scoreboard players set @a[team=!hub] mage 0
scoreboard players set @a[team=!hub] guerrier 0
scoreboard players set @a[team=!hub] necromancien 0
scoreboard players set @a[team=!hub] chevalier 0
scoreboard players set @a[team=!hub] chaman 0
scoreboard players set @a[team=!hub] druide 0
scoreboard players set @a[team=!hub] fantomeK 0
scoreboard players set @a[team=!hub] murloc 0
scoreboard players set @a[team=!hub] batisseur 0
scoreboard players set @a[team=!hub] assassinK 0
scoreboard players set @a[team=!hub] chasseurGG 0
scoreboard players set @a[team=!hub] MaitreM 0
scoreboard players set @a[team=!hub] ingenieur 0

#---------------------------------------------------------
#statistiques phisiques des roles

effect give @a pitchout:resistance 99999 10 true

effect give @a[team=ranger] pitchout:speed 99999 3 true

effect give @a[team=forestier] pitchout:speed 99999 5 true
effect give @a[team=mage] pitchout:speed 99999 3 true
effect give @a[team=guerrier] pitchout:speed 99999 2 true
effect give @a[team=necromancien] pitchout:speed 99999 3 true

effect give @a[team=chevalier,scores={vie=2..}] pitchout:speed 99999 3 true
effect give @a[team=chevalier,scores={vie=1}] pitchout:speed 99999 5 true
effect give @a[team=chevalier,scores={vie=1}] pitchout:glowing 99999 3 true
effect clear @a[team=chevalier,scores={vie=2..}] pitchout:glowing

effect give @a[team=chaman] pitchout:speed 99999 2 true
effect give @a[team=druide] pitchout:speed 99999 3 true
effect give @a[team=fantome] pitchout:speed 99999 4 true
effect give @a[team=murloc] pitchout:speed 99999 3 true
effect give @a[team=batisseur] pitchout:speed 99999 3 true
effect give @a[team=assassin] pitchout:speed 99999 4 true
effect give @a[team=Chasseur] pitchout:speed 99999 3 true
effect give @a[team=GOD] pitchout:speed 99999 2 true
effect give @a[team=ingenieur] pitchout:speed 99999 3 true
#--------------------------------------------------------------
#un demi gigot de nourriture manquant

execute as @a[scores={food=20}] run effect give @s pitchout:hunger 1 250 true
execute as @a[scores={food=..18}] run effect give @s pitchout:saturation 1 0 true

#--------------------------------------------------------------
#scoreboard par kits

scoreboard players set @a[team=!ranger] fishing 0
scoreboard players set @a[team=!ranger] PlayerTimer 0
scoreboard players set @a[team=!forestier] familier 0
scoreboard players set @a[team=!mage] levi 0
scoreboard players set @a[team=!mage] creeper 0
scoreboard players set @a[team=!guerrier] bouclier 0
scoreboard players set @a[team=!guerrier] arti 0
scoreboard players set @a[team=!guerrier] invul 0
scoreboard players set @a[team=!guerrier] rocket 0

#--------------------------------------------------------------
#affichage nombre de vie + gestion inventaire

execute as @a[scores={vie=5}] run item replace entity @s hotbar.8 with pitchout:redstone 5
execute as @a[scores={vie=4}] run item replace entity @s hotbar.8 with pitchout:redstone 4
execute as @a[scores={vie=3}] run item replace entity @s hotbar.8 with pitchout:redstone 3
execute as @a[scores={vie=2}] run item replace entity @s hotbar.8 with pitchout:redstone 2
execute as @a[scores={vie=1}] run item replace entity @s hotbar.8 with pitchout:redstone 1


execute as @a[team=!hub] run item replace entity @s container.17 with pitchout:arrow 1
clear @a[team=!hub] pitchout:written_book