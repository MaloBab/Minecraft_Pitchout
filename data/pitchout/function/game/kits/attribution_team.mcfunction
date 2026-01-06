#ajout role si non-choisi

execute if score select po.map.vote_id matches 1 run execute positioned 0 0 0 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 2 run execute positioned 596 46 83 run team join ranger @a[distance=..120,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 3 run execute positioned 1572 46 108 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
execute if score select po.map.vote_id matches 4 run execute positioned 465 65 -297 run team join ranger @a[distance=..200,team=hub,scores={po.kit.ranger=0,po.kit.forestier=0,po.kit.mage=0,po.kit.guerrier=0,po.kit.necromancien=0,po.kit.chevalier=0,po.kit.chaman=0,po.kit.druide=0,po.kit.fantome=0,po.kit.batisseur=0,po.kit.murloc=0,po.kit.assassin=0,po.kit.chasseurgg=0,po.kit.maitrem=0,po.kit.ingenieur=0}]
#---------------------------------------------------------

#attribution team selon kit choisi

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