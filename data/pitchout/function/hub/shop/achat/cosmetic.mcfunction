execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.lasso0 run clear @s minecraft:fishing_rod[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"DEFAUT","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Cliquez pour sélectionner","color":"green"}]']]

execute as @a[scores={po.model.lasso0=1..}] run scoreboard players set @s po.cos.equiplasso 1
execute as @a[scores={po.model.lasso0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

#po.cos.rangerg pour les possession
execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.lasso1 run clear @s minecraft:fishing_rod[minecraft:custom_name='[{"text":"LASSO :","bold":true,"color":"yellow"},{"text":" Modèle 1","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Cowboy ! ] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"200 ","color":"yellow"},{"text":"po.coins","color":"gold"}]'],minecraft:custom_model_data=1]

execute as @a[scores={po.model.lasso1=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.model.lasso1=1..}] run scoreboard players operation @s po.tech.modulo %= 2 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.model.lasso1=1..,po.coins=..200},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.model.lasso1=1..,po.coins=200..},advancements={pitchout:hautfait/ranger/cowboy=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Cowboy ! ]","color":"aqua"}]
#execute as @a[scores={po.model.lasso1=1..,po.coins=..200},advancements={pitchout:hautfait/ranger/cowboy=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.model.lasso1=1..,po.coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 2 po.tech.balise
#execute as @a[scores={po.model.lasso1=1..,po.coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.model.lasso1=1..,po.coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 200
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.model.lasso1=1..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.equiplasso 2
#execute as @a[scores={po.model.lasso1=1..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

execute as @a[scores={po.model.lasso0=1..}] run scoreboard players set @s po.model.lasso0 0
execute as @a[scores={po.model.lasso1=1..}] run scoreboard players set @s po.model.lasso1 0

#----------------------------------------------------------------------------------
#enderpearl

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.enderpearl0 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524c"},{"text":" DEFAUT","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Cliquez pour sélectionner","color":"green"}]']]

execute as @a[scores={po.model.enderpearl0=1..}] run scoreboard players set @s po.cos.equipender 1
execute as @a[scores={po.model.enderpearl0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 1
#po.cos.rangerg pour les possession
execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.enderpearl1 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 1","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Teleportation ! ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"150 ","color":"yellow"},{"text":"po.coins","color":"gold"}]'],minecraft:custom_model_data=1]

execute as @a[scores={po.model.enderpearl1=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.model.enderpearl1=1..}] run scoreboard players operation @s po.tech.modulo %= 3 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=..150},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/teleportation=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Teleportation ! ]","color":"aqua"}]
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=..150},advancements={pitchout:hautfait/ranger/teleportation=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 3 po.tech.balise
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.model.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 150
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.model.enderpearl1=1..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.equipender 2
#execute as @a[scores={po.model.enderpearl1=1..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 2

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.enderpearl2 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 2","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ In Extremis I ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"250 ","color":"yellow"},{"text":"po.coins","color":"gold"}]'],minecraft:custom_model_data=2]

execute as @a[scores={po.model.enderpearl2=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.model.enderpearl2=1..}] run scoreboard players operation @s po.tech.modulo %= 5 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=..250},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=250..},advancements={pitchout:hautfait/ranger/inextremis=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ In Extremis I ]","color":"light_purple"}]
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=..250},advancements={pitchout:hautfait/ranger/inextremis=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 5 po.tech.balise
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.model.enderpearl2=1..,po.coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 250
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.model.enderpearl2=1..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.equipender 3
#execute as @a[scores={po.model.enderpearl2=1..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

#ender pearl 3

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.enderpearl3 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 3","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ In Extremis II ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"350 ","color":"yellow"},{"text":"po.coins","color":"gold"}]'],minecraft:custom_model_data=3]

execute as @a[scores={po.model.enderpearl3=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.model.enderpearl3=1..}] run scoreboard players operation @s po.tech.modulo %= 7 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=..350},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ In Extremis II ]","color":"dark_red"}]
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=..350},advancements={pitchout:hautfait/ranger/inextremis2=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 7 po.tech.balise
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.model.enderpearl3=1..,po.coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 350
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.model.enderpearl3=1..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.equipender 4
#execute as @a[scores={po.model.enderpearl3=1..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 4

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.model.enderpearl4 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 4","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Du danger ? Quel danger ? II ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"400 ","color":"yellow"},{"text":"po.coins","color":"gold"}]'],minecraft:custom_model_data=4]

execute as @a[scores={po.model.enderpearl4=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.model.enderpearl4=1..}] run scoreboard players operation @s po.tech.modulo %= 11 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=..400},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=400..},advancements={pitchout:hautfait/ranger/danger2=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Du danger ? Quel danger II ]","color":"dark_red"}]
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=..400},advancements={pitchout:hautfait/ranger/danger2=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 11 po.tech.balise
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.model.enderpearl4=1..,po.coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 400
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.model.enderpearl4=1..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.equipender 5
#execute as @a[scores={po.model.enderpearl4=1..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------


#son Lasso

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.sound.lasso0 run clear @s minecraft:barrier[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"son par défaut","color":"light_purple"}]']

execute as @a[scores={po.sound.lasso0=1..}] run scoreboard players set @s po.cos.sound.equiplasso 0
execute as @a[scores={po.sound.lasso0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

#son enderpearl

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.sound.enderpearl0 run clear @s minecraft:barrier[minecraft:custom_name='[{"text":"ENDER PEARL : ","bold":true,"color":"#05524B"},{"text":"son par défaut","color":"light_purple"}]']

execute as @a[scores={po.sound.enderpearl0=1..}] run scoreboard players set @s po.cos.sound.equipender 0
execute as @a[scores={po.sound.enderpearl0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]

#----------------------------------------------------------------------------------------------
#son Lasso 1

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.sound.lasso1 run clear @s minecraft:music_disc_cat[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"son alternatif 1","color":"light_purple"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Baroud d\'honneur ] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"150 ","color":"yellow"},{"text":"po.coins","color":"gold"}]']]

execute as @a[scores={po.sound.lasso1=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.sound.lasso1=1..}] run scoreboard players operation @s po.tech.modulo %= 13 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.sound.lasso1=1..,po.coins=..150},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.sound.lasso1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/barroud=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Baroud d'honneur ]","color":"dark_red"}]
#execute as @a[scores={po.sound.lasso1=1..,po.coins=..150},advancements={pitchout:hautfait/ranger/barroud=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.sound.lasso1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 13 po.tech.balise
#execute as @a[scores={po.sound.lasso1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.sound.lasso1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 150
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.sound.lasso1=1..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.sound.equiplasso 1
#execute as @a[scores={po.sound.lasso1=1..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------
#son Enderpearl 1

execute as @a[scores={po.ui.cosmetic_menu=1..}] run execute store success score @s po.sound.enderpearl1 run clear @s minecraft:music_disc_13[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524c"},{"text":" son alternatif 1","color":"light_purple"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Du danger ? Quel danger ? I] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"200 ","color":"yellow"},{"text":"po.coins","color":"gold"}]']]

execute as @a[scores={po.sound.enderpearl1=1..}] run scoreboard players operation @s po.tech.modulo = @s po.cos.rangerg
execute as @a[scores={po.sound.enderpearl1=1..}] run scoreboard players operation @s po.tech.modulo %= 17 po.tech.balise

#cause achat échoué
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=..200},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=200..},advancements={pitchout:hautfait/ranger/danger=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Du danger ? Quel danger I ]","color":"dark_red"}]
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=..200},advancements={pitchout:hautfait/ranger/danger=false}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players operation @s po.cos.rangerg *= 17 po.tech.balise
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
#execute as @a[scores={po.sound.enderpearl1=1..,po.coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s po.tech.modulo matches 0 run scoreboard players remove @s po.coins 200
#----------------------------------------------------------------------------------

#test condition équipement
#execute as @a[scores={po.sound.enderpearl1=1..},advancements={pitchout:hautfait/ranger/danger=true}] run execute if score @s po.tech.modulo matches 0 run scoreboard players set @s po.cos.sound.equipender 1
#execute as @a[scores={po.sound.enderpearl1=1..},advancements={pitchout:hautfait/ranger/danger=true}] run execute if score @s po.tech.modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

execute as @a[scores={po.model.enderpearl0=1..}] run scoreboard players set @s po.model.enderpearl0 0
execute as @a[scores={po.model.enderpearl1=1..}] run scoreboard players set @s po.model.enderpearl1 0
execute as @a[scores={po.model.enderpearl2=1..}] run scoreboard players set @s po.model.enderpearl2 0
execute as @a[scores={po.model.enderpearl3=1..}] run scoreboard players set @s po.model.enderpearl3 0
execute as @a[scores={po.model.enderpearl4=1..}] run scoreboard players set @s po.model.enderpearl4 0
execute as @a[scores={po.sound.lasso0=1..}] run scoreboard players set @s po.sound.lasso0 0
execute as @a[scores={po.sound.enderpearl0=1..}] run scoreboard players set @s po.sound.enderpearl0 0
execute as @a[scores={po.sound.lasso1=1..}] run scoreboard players set @s po.sound.lasso1 0
execute as @a[scores={po.sound.enderpearl1=1..}] run scoreboard players set @s po.sound.enderpearl1 0


#-----------------------------------------------------------------------------------------------

#FORESTIER

kill @e[type=minecraft:item,tag=!vide,nbt=!{Item:{id:"minecraft:iron_nugget"}},nbt=!{Item:{id:"minecraft:creeper_banner_pattern"}},nbt=!{Item:{id:"minecraft:globe_banner_pattern"}},nbt=!{Item:{id:"minecraft:flower_banner_pattern"}},nbt=!{Item:{id:"minecraft:piglin_banner_pattern"}},nbt=!{Item:{id:"minecraft:skull_banner_pattern"}},nbt=!{Item:{id:"minecraft:mojang_banner_pattern"}}]