#initialisation des scores

execute as @a[scores={menu=2},team=hub] store result score @s bois run clear @s minecraft:wooden_shovel
execute as @a[scores={menu=2},team=hub] store result score @s pierre run clear @s minecraft:stone_shovel
execute as @a[scores={menu=2},team=hub] store result score @s fer run clear @s minecraft:iron_shovel
execute as @a[scores={menu=2},team=hub] store result score @s or run clear @s minecraft:golden_shovel
execute as @a[scores={menu=2},team=hub] store result score @s diamant run clear @s minecraft:diamond_shovel
execute as @a[scores={menu=2},team=hub] store result score @s nether run clear @s minecraft:netherite_shovel

#----------------------------------------------------------------------
#selection des pelles pour jeu

execute as @a[scores={menu=2,bois=1,pelle0=1}] run scoreboard players set @s pelle0 2
execute as @a[scores={menu=2,bois=1,pelle0=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={menu=2,pierre=1,pelle1=1}] run scoreboard players set @s pelle1 2
execute as @a[scores={menu=2,pierre=1,pelle1=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={menu=2,fer=1,pelle2=1}] run scoreboard players set @s pelle2 2
execute as @a[scores={menu=2,fer=1,pelle2=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={menu=2,or=1,pelle3=1}] run scoreboard players set @s pelle3 2
execute as @a[scores={menu=2,or=1,pelle3=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={menu=2,diamant=1,pelle4=1}] run scoreboard players set @s pelle4 2
execute as @a[scores={menu=2,diamant=1,pelle4=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={menu=2,nether=1,pelle5=1}] run scoreboard players set @s pelle5 2
execute as @a[scores={menu=2,nether=1,pelle5=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

#----------------------------------------------------------------------
#achats pelles

execute as @a[scores={pelle0=2,bois=1,pelle1=1..}] run scoreboard players set @s pelle1 1
execute as @a[scores={pelle0=2,bois=1,pelle2=1..}] run scoreboard players set @s pelle2 1
execute as @a[scores={pelle0=2,bois=1,pelle3=1..}] run scoreboard players set @s pelle3 1
execute as @a[scores={pelle0=2,bois=1,pelle4=1..}] run scoreboard players set @s pelle4 1
execute as @a[scores={pelle0=2,bois=1,pelle5=1..}] run scoreboard players set @s pelle5 1


execute as @a[scores={menu=2,pierre=1}] run execute if entity @s[scores={pelle1=0,coins=60..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,pierre=1}] run execute if entity @s[scores={pelle1=0,coins=60..}] run scoreboard players remove @s coins 60
execute as @a[scores={menu=2,pierre=1}] run execute if entity @s[scores={pelle1=0}] run scoreboard players set @s pelle1 1
execute as @a[scores={menu=2,pierre=1,pelle1=1}] run scoreboard players set @s pierre 0

execute as @a[scores={menu=2,pierre=1}] run execute if entity @s[scores={pelle1=0,coins=..60}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,pierre=1,pelle1=0,coins=..60}] run scoreboard players set @a[scores={pierre=1}] pierre 0


execute as @a[scores={menu=2,fer=1}] run execute if entity @s[scores={pelle2=0,coins=120..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,fer=1}] run execute if entity @s[scores={pelle2=0,coins=120..}] run scoreboard players remove @s coins 120
execute as @a[scores={menu=2,fer=1}] run execute if entity @s[scores={pelle2=0}] run scoreboard players set @s pelle2 1
execute as @a[scores={menu=2,fer=1,pelle2=1}] run scoreboard players set @s fer 0

execute as @a[scores={menu=2,fer=1}] run execute if entity @s[scores={pelle2=0,coins=..120}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,fer=1,pelle2=0,coins=..120}] run scoreboard players set @a[scores={fer=1}] fer 0


execute as @a[scores={menu=2,or=1}] run execute if entity @s[scores={pelle3=0,coins=200..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,or=1}] run execute if entity @s[scores={pelle3=0,coins=200..}] run scoreboard players remove @s coins 200
execute as @a[scores={menu=2,or=1}] run execute if entity @s[scores={pelle3=0}] run scoreboard players set @s pelle3 1
execute as @a[scores={menu=2,or=1,pelle3=1}] run scoreboard players set @s or 0

execute as @a[scores={menu=2,or=1}] run execute if entity @s[scores={pelle3=0,coins=..200}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,or=1,pelle3=0,coins=..200}] run scoreboard players set @a[scores={or=1}] or 0


execute as @a[scores={menu=2,diamant=1}] run execute if entity @s[scores={pelle4=0,coins=320..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,diamant=1}] run execute if entity @s[scores={pelle4=0,coins=320..}] run scoreboard players remove @s coins 320
execute as @a[scores={menu=2,diamant=1}] run execute if entity @s[scores={pelle4=0}] run scoreboard players set @s pelle4 1
execute as @a[scores={menu=2,diamant=1,pelle4=1}] run scoreboard players set @s diamant 0

execute as @a[scores={menu=2,diamant=1}] run execute if entity @s[scores={pelle4=0,coins=..320}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,diamant=1,pelle4=0,coins=..320}] run scoreboard players set @a[scores={or=1}] diamant 0


execute as @a[scores={menu=2,nether=1}] run execute if entity @s[scores={pelle5=0,coins=450..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,nether=1}] run execute if entity @s[scores={pelle5=0,coins=450..}] run scoreboard players remove @s coins 450
execute as @a[scores={menu=2,nether=1}] run execute if entity @s[scores={pelle5=0}] run scoreboard players set @s pelle5 1
execute as @a[scores={menu=2,nether=1,pelle5=1}] run scoreboard players set @s nether 0

execute as @a[scores={menu=2,nether=1}] run execute if entity @s[scores={pelle5=0,coins=..450}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,nether=1,pelle5=0,coins=..450}] run scoreboard players set @a[scores={nether=1}] nether 0

#----------------------------------------------------------------------
#reinitialisation pelles
execute as @a[scores={pelle1=2,pierre=1,pelle0=1..}] run scoreboard players set @s pelle0 1
execute as @a[scores={pelle1=2,pierre=1,pelle2=1..}] run scoreboard players set @s pelle2 1
execute as @a[scores={pelle1=2,pierre=1,pelle3=1..}] run scoreboard players set @s pelle3 1
execute as @a[scores={pelle1=2,pierre=1,pelle4=1..}] run scoreboard players set @s pelle4 1
execute as @a[scores={pelle1=2,pierre=1,pelle5=1..}] run scoreboard players set @s pelle5 1

execute as @a[scores={pelle2=2,fer=1,pelle0=1..}] run scoreboard players set @s pelle0 1
execute as @a[scores={pelle2=2,fer=1,pelle1=1..}] run scoreboard players set @s pelle1 1
execute as @a[scores={pelle2=2,fer=1,pelle3=1..}] run scoreboard players set @s pelle3 1
execute as @a[scores={pelle2=2,fer=1,pelle4=1..}] run scoreboard players set @s pelle4 1
execute as @a[scores={pelle2=2,fer=1,pelle5=1..}] run scoreboard players set @s pelle5 1

execute as @a[scores={pelle3=2,or=1,pelle0=1..}] run scoreboard players set @s pelle0 1
execute as @a[scores={pelle3=2,or=1,pelle1=1..}] run scoreboard players set @s pelle1 1
execute as @a[scores={pelle3=2,or=1,pelle2=1..}] run scoreboard players set @s pelle2 1
execute as @a[scores={pelle3=2,or=1,pelle4=1..}] run scoreboard players set @s pelle4 1
execute as @a[scores={pelle3=2,or=1,pelle5=1..}] run scoreboard players set @s pelle5 1

execute as @a[scores={pelle4=2,diamant=1,pelle0=1..}] run scoreboard players set @s pelle0 1
execute as @a[scores={pelle4=2,diamant=1,pelle1=1..}] run scoreboard players set @s pelle1 1
execute as @a[scores={pelle4=2,diamant=1,pelle2=1..}] run scoreboard players set @s pelle2 1
execute as @a[scores={pelle4=2,diamant=1,pelle3=1..}] run scoreboard players set @s pelle3 1
execute as @a[scores={pelle4=2,diamant=1,pelle5=1..}] run scoreboard players set @s pelle5 1

execute as @a[scores={pelle5=2,nether=1,pelle0=1..}] run scoreboard players set @s pelle0 1
execute as @a[scores={pelle5=2,nether=1,pelle1=1..}] run scoreboard players set @s pelle1 1
execute as @a[scores={pelle5=2,nether=1,pelle2=1..}] run scoreboard players set @s pelle2 1
execute as @a[scores={pelle5=2,nether=1,pelle3=1..}] run scoreboard players set @s pelle3 1
execute as @a[scores={pelle5=2,nether=1,pelle4=1..}] run scoreboard players set @s pelle4 1