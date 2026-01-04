
execute as @e run execute store result score @s po.tech.layer run data get entity @s Pos[1] 1


#point de spawn

execute if score select po.map.vote_id matches 1 run spawnpoint @a[scores={po.tech.remaining_lives=5}] 24 16 7
execute if score select po.map.vote_id matches 2 run spawnpoint @a[scores={po.tech.remaining_lives=5}] 596 46 83
execute if score select po.map.vote_id matches 3 run spawnpoint @a[scores={po.tech.remaining_lives=5}] 1572 46 108
execute if score select po.map.vote_id matches 4 run spawnpoint @a[scores={po.tech.remaining_lives=5}] 465 65 -297
title @a times 0 80 0

#---------------------------------------------------------
#kill des entites inutiles

kill @e[type=minecraft:item,tag=!vide,nbt=!{Item:{id:"minecraft:iron_nugget"}},nbt=!{Item:{id:"minecraft:creeper_banner_pattern"}},nbt=!{Item:{id:"minecraft:globe_banner_pattern"}},nbt=!{Item:{id:"minecraft:flower_banner_pattern"}},nbt=!{Item:{id:"minecraft:piglin_banner_pattern"}},nbt=!{Item:{id:"minecraft:skull_banner_pattern"}},nbt=!{Item:{id:"minecraft:mojang_banner_pattern"}}]
kill @e[type=minecraft:arrow,nbt={inGround:1b},tag=!mouv,tag=!Vis,tag=!Bar,tag=!Ftp,tag=!Ftp2]

#---------------------------------------------------------

#ajout role de base

execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join ranger @a[distance=..120,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]

#---------------------------------------------------------

#ajout team
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join forestier @a[distance=..200,team=hub,scores={po.kit.forestier=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join mage @a[distance=..200,team=hub,scores={po.kit.mage=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join guerrier @a[distance=..200,team=hub,scores={po.kit.guerrier=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join necromancien @a[distance=..200,team=hub,scores={po.kit.necromancien=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join chevalier @a[distance=..200,team=hub,scores={po.kit.chevalier=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join chaman @a[distance=..200,team=hub,scores={po.kit.chaman=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join druide @a[distance=..200,team=hub,scores={po.kit.druide=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join fantome @a[distance=..200,team=hub,scores={po.kit.fantome=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join murloc @a[distance=..200,team=hub,scores={po.kit.murloc=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join batisseur @a[distance=..200,team=hub,scores={po.kit.batisseur=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join assassin @a[distance=..200,team=hub,scores={po.kit.assassin=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join Chasseur @a[distance=..200,team=hub,scores={po.kit.chasseurgg=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join GOD @a[distance=..200,team=hub,scores={po.kit.maitrem=1}]
execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join ingenieur @a[distance=..200,team=hub,scores={po.kit.ingenieur=1}]


execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join ranger @a[distance=..80,team=hub,scores={po.kit.ranger=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join forestier @a[distance=..80,team=hub,scores={po.kit.forestier=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join mage @a[distance=..80,team=hub,scores={po.kit.mage=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join guerrier @a[distance=..80,team=hub,scores={po.kit.guerrier=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join necromancien @a[distance=..80,team=hub,scores={po.kit.necromancien=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join chevalier @a[distance=..80,team=hub,scores={po.kit.chevalier=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join chaman @a[distance=..80,team=hub,scores={po.kit.chaman=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join druide @a[distance=..80,team=hub,scores={po.kit.druide=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join fantome @a[distance=..80,team=hub,scores={po.kit.fantome=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join murloc @a[distance=..80,team=hub,scores={po.kit.murloc=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join batisseur @a[distance=..80,team=hub,scores={po.kit.batisseur=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join assassin @a[distance=..80,team=hub,scores={po.kit.assassin=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join Chasseur @a[distance=..80,team=hub,scores={po.kit.chasseurgg=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join GOD @a[distance=..80,team=hub,scores={po.kit.maitrem=1}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join ingenieur @a[distance=..80,team=hub,scores={po.kit.ingenieur=1}]


execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join forestier @a[distance=..200,team=hub,scores={po.kit.forestier=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join mage @a[distance=..200,team=hub,scores={po.kit.mage=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join guerrier @a[distance=..200,team=hub,scores={po.kit.guerrier=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join necromancien @a[distance=..200,team=hub,scores={po.kit.necromancien=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join chevalier @a[distance=..200,team=hub,scores={po.kit.chevalier=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join chaman @a[distance=..200,team=hub,scores={po.kit.chaman=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join druide @a[distance=..200,team=hub,scores={po.kit.druide=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join fantome @a[distance=..200,team=hub,scores={po.kit.fantome=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join murloc @a[distance=..200,team=hub,scores={po.kit.murloc=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join batisseur @a[distance=..200,team=hub,scores={po.kit.batisseur=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join assassin @a[distance=..200,team=hub,scores={po.kit.assassin=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join Chasseur @a[distance=..200,team=hub,scores={po.kit.chasseurgg=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join GOD @a[distance=..200,team=hub,scores={po.kit.maitrem=1}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join ingenieur @a[distance=..200,team=hub,scores={po.kit.ingenieur=1}]


execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join forestier @a[distance=..200,team=hub,scores={po.kit.forestier=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join mage @a[distance=..200,team=hub,scores={po.kit.mage=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join guerrier @a[distance=..200,team=hub,scores={po.kit.guerrier=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join necromancien @a[distance=..200,team=hub,scores={po.kit.necromancien=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join chevalier @a[distance=..200,team=hub,scores={po.kit.chevalier=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join chaman @a[distance=..200,team=hub,scores={po.kit.chaman=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join druide @a[distance=..200,team=hub,scores={po.kit.druide=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join fantome @a[distance=..200,team=hub,scores={po.kit.fantome=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join murloc @a[distance=..200,team=hub,scores={po.kit.murloc=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join batisseur @a[distance=..200,team=hub,scores={po.kit.batisseur=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join assassin @a[distance=..200,team=hub,scores={po.kit.assassin=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join Chasseur @a[distance=..200,team=hub,scores={po.kit.chasseurgg=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join GOD @a[distance=..200,team=hub,scores={po.kit.maitrem=1}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join ingenieur @a[distance=..200,team=hub,scores={po.kit.ingenieur=1}]

#---------------------------------------------------------
#reinitialisation scores de selections
scoreboard players set @a[team=!hub] po.kit.ranger 0
scoreboard players set @a[team=!hub] po.kit.forestier 0
scoreboard players set @a[team=!hub] po.kit.mage 0
scoreboard players set @a[team=!hub] po.kit.guerrier 0
scoreboard players set @a[team=!hub] po.kit.necromancien 0
scoreboard players set @a[team=!hub] po.kit.chevalier 0
scoreboard players set @a[team=!hub] po.kit.chaman 0
scoreboard players set @a[team=!hub] po.kit.druide 0
scoreboard players set @a[team=!hub] po.kit.fantome 0
scoreboard players set @a[team=!hub] po.kit.murloc 0
scoreboard players set @a[team=!hub] po.kit.batisseur 0
scoreboard players set @a[team=!hub] po.kit.assassin 0
scoreboard players set @a[team=!hub] po.kit.chasseurgg 0
scoreboard players set @a[team=!hub] po.kit.maitrem 0
scoreboard players set @a[team=!hub] po.kit.ingenieur 0
#---------------------------------------------------------
#statistiques phisiques des roles

effect give @a minecraft:resistance 99999 10 true

effect give @a[team=ranger] minecraft:speed 99999 3 true

effect give @a[team=forestier] minecraft:speed 99999 5 true
effect give @a[team=mage] minecraft:speed 99999 3 true
effect give @a[team=guerrier] minecraft:speed 99999 2 true
effect give @a[team=necromancien] minecraft:speed 99999 3 true

effect give @a[team=chevalier,scores={po.tech.remaining_lives=2..}] minecraft:speed 99999 3 true
effect give @a[team=chevalier,scores={po.tech.remaining_lives=1}] minecraft:speed 99999 5 true
effect give @a[team=chevalier,scores={po.tech.remaining_lives=1}] minecraft:glowing 99999 3 true
effect clear @a[team=chevalier,scores={po.tech.remaining_lives=2..}] minecraft:glowing

effect give @a[team=chaman] minecraft:speed 99999 2 true
effect give @a[team=druide] minecraft:speed 99999 3 true
effect give @a[team=fantome] minecraft:speed 99999 4 true
effect give @a[team=murloc] minecraft:speed 99999 3 true
effect give @a[team=batisseur] minecraft:speed 99999 3 true
effect give @a[team=assassin] minecraft:speed 99999 4 true
effect give @a[team=Chasseur] minecraft:speed 99999 3 true
effect give @a[team=GOD] minecraft:speed 99999 2 true
effect give @a[team=ingenieur] minecraft:speed 99999 3 true
#--------------------------------------------------------------
#un demi gigot de nourriture manquant

execute as @a[scores={po.tech.food=20}] run effect give @s minecraft:hunger 1 250 true
execute as @a[scores={po.tech.food=..18}] run effect give @s minecraft:saturation 1 0 true

#--------------------------------------------------------------
#scoreboard par kits

scoreboard players set @a[team=!ranger] po.use.rod 0
scoreboard players set @a[team=!ranger] po.timer.playertimer 0
scoreboard players set @a[team=!forestier] po.use.familiar 0
scoreboard players set @a[team=!mage] po.use.levitation 0
scoreboard players set @a[team=!mage] po.legacy.creeper 0
scoreboard players set @a[team=!guerrier] po.use.shield_cookie 0
scoreboard players set @a[team=!guerrier] po.use.crossbow_arti 0
scoreboard players set @a[team=!guerrier] po.tech.invulnerable 0
scoreboard players set @a[team=!guerrier] po.legacy.rocket 0
#--------------------------------------------------------------
#affichage nombre de vie + gestion inventaire

execute as @a[scores={po.tech.remaining_lives=5}] run item replace entity @s hotbar.8 with minecraft:redstone 5
execute as @a[scores={po.tech.remaining_lives=4}] run item replace entity @s hotbar.8 with minecraft:redstone 4
execute as @a[scores={po.tech.remaining_lives=3}] run item replace entity @s hotbar.8 with minecraft:redstone 3
execute as @a[scores={po.tech.remaining_lives=2}] run item replace entity @s hotbar.8 with minecraft:redstone 2
execute as @a[scores={po.tech.remaining_lives=1}] run item replace entity @s hotbar.8 with minecraft:redstone 1

execute as @a[team=!hub] run item replace entity @s container.17 with minecraft:arrow 1
clear @a[team=!hub] minecraft:written_book