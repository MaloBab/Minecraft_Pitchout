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
#---------------------------------------------------------------------------------------------------
#Partie Angélique
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run scoreboard players add timer po.cd.obj_angelique 1


#apparition Hotels
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1621 45 97 quartz_pillar
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1622 45 97 minecraft:polished_diorite_stairs[facing=west,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1620 45 97 minecraft:polished_diorite_stairs[facing=east,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run particle end_rod 1621 45 97 0 2 0 0.01 7

execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1612 73 109 quartz_pillar
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1612 73 108 minecraft:polished_diorite_stairs[facing=south,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1612 73 110 minecraft:polished_diorite_stairs[facing=north,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run particle end_rod 1612 73 109 0 2 0 0.01 7

execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1529 45 108 quartz_pillar
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1529 45 107 minecraft:polished_diorite_stairs[facing=south,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run setblock 1529 45 109 minecraft:polished_diorite_stairs[facing=north,half=bottom,shape=straight]
execute if score eventPartie po.legacy.eventtype matches 9 run execute if entity @a[team=!hub] run particle end_rod 1529 45 108 0 2 0 0.01 7
#---------------------------------------------------------------------------------------------------

#disparition Hotels
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1621 45 97 1621 45 97 air replace quartz_pillar
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1612 73 109 1612 73 109 air replace quartz_pillar
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1529 45 108 1529 45 108 air replace quartz_pillar

execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1622 45 97 1622 45 97 air replace polished_diorite_stairs
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1529 45 107 1529 45 107 air replace polished_diorite_stairs
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1612 73 108 1612 73 108 air replace polished_diorite_stairs

execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1620 45 97 1620 45 97 air replace polished_diorite_stairs
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1529 45 109 1529 45 109 air replace polished_diorite_stairs
execute if score eventPartie po.legacy.eventtype matches 7.. unless score eventPartie po.legacy.eventtype matches 9 if entity @a[team=!hub] run fill 1612 73 110 1612 73 110 air replace polished_diorite_stairs
#---------------------------------------------------------------------------------------------------
#gestion hotel

execute if score timer po.cd.obj_angelique matches 1 run scoreboard players set hotel po.cd.obj_angelique 0

execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 0 run fill 1621 46 97 1621 46 97 air replace bell
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 0 run fill 1612 74 109 1612 74 109 air replace bell
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 0 run fill 1529 46 108 1529 46 108 air replace bell

execute if score eventPartie po.legacy.eventtype matches 9 if score timer po.cd.obj_angelique matches 1800 store result score hotel po.cd.obj_angelique run random value 1..3

execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 1 run fill 1621 46 97 1621 46 97 bell[facing=north] replace air
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 2 run fill 1612 74 109 1612 74 109 bell[facing=west] replace air
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score hotel po.cd.obj_angelique matches 3 run fill 1529 46 108 1529 46 108 bell[facing=west] replace air

execute if score hotel po.cd.obj_angelique matches 1 run particle soul_fire_flame 1621 46.3 97 0.2 0.3 0.2 0.02 4 force @a
execute if score hotel po.cd.obj_angelique matches 2 run particle soul_fire_flame 1612 74.3 109 0.2 0.3 0.2 0.02 4 force @a
execute if score hotel po.cd.obj_angelique matches 3 run particle soul_fire_flame 1529 46.3 108 0.2 0.3 0.2 0.02 4 force @a

#---------------------------------------------------------------------------------------------------
#tellraw
execute if score eventPartie po.legacy.eventtype matches 9 if score timer po.cd.obj_angelique matches 2400.. run scoreboard players set timer po.cd.obj_angelique 0

execute if score timer po.cd.obj_angelique matches 1 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"1 minute 30","color":"dark_green"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 600 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"1 minute","color":"green"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1200 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"30 secondes","color":"yellow"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1600 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"10 secondes","color":"dark_red"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1800 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Le Glas Divin","bold":true,"color":"aqua"},{"text":" est apparu ! "},{"text":"Sonnez-le","bold":true,"color":"dark_red"},{"text":" en\npremier","color":"green"},{"text":" pour obtenir "},{"text":"une récompense !","color":"gold"},{"text":"\n"},{"text":"(30 secondes avant disparition ! )","color":"aqua"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]

#---------------------------------------------------------------------------------------------------
#gestion sonnerie

execute if entity @a[scores={po.use.bell=1..}] run scoreboard players set timer po.cd.obj_angelique 0
execute as @a[team=!hub,scores={po.use.bell=1..},limit=1,sort=arbitrary] run scoreboard players set @s po.use.bell 2
execute as @a[team=!hub,scores={po.use.bell=2}] run scoreboard players set @a[team=!hub,scores={po.use.bell=..1}] po.use.bell 0
execute as @a[team=!hub,scores={po.use.bell=2}] store result score @s po.legacy.randglas run random value 1..5
execute as @a[team=!hub,scores={po.use.bell=2}] run scoreboard players set @s po.use.bell 0


execute as @a[team=!hub,scores={po.legacy.randglas=1}] run item replace entity @s hotbar.2 with minecraft:flow_armor_trim_smithing_template[minecraft:item_name='[{"text":"INVERSION DES DESTINS","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Consommez cet item","color":"aqua"},{"text":" pour échanger votre "},{"text":"nombre de vie restant","color":"dark_green"}]','[{"text":"avec un "},{"text":"autre joueur aléatoire !","color":"red"}]'],minecraft:enchantment_glint_override=true,minecraft:food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @a[team=!hub,scores={po.legacy.randglas=1}] run tellraw @a[team=!hub] ["",{"selector":"@a[team=!hub,scores={po.legacy.randglas=1}]","color":"aqua"},{"text":" a obtenu l' ","color":"gold"},{"text":"INVERSION DES DESTINS","bold":true,"color":"light_purple"}]
execute as @a[team=!hub,scores={po.legacy.randglas=2}] run item replace entity @s hotbar.2 with minecraft:nether_star[minecraft:item_name='[{"text":"A","bold":true,"obfuscated":true,"color":"aqua"},{"text":" AILE D\'ANGE","obfuscated":false,"bold":true,"color":"light_purple"},{"text":" A","bold":true,"obfuscated":true,"color":"aqua"}]',minecraft:lore=['[{"text":"Consommez cet item","color":"aqua"},{"text":" pour obtenir "},{"text":"une paire d\'Elytras","color":"light_purple"},{"text":" et"}]','[{"text":"5 fusées de feux d\'artifices","color":"green"},{"text":" pendant "},{"text":"10 secondes","color":"gold"}]'],minecraft:enchantment_glint_override=true,minecraft:food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @a[team=!hub,scores={po.legacy.randglas=2}] run tellraw @a[team=!hub] ["",{"selector":"@a[team=!hub,scores={po.legacy.randglas=2}]","color":"aqua"},{"text":" a obtenu les ","color":"gold"},{"text":"AILES D'ANGE","bold":true,"color":"light_purple"}]
execute as @a[team=!hub,scores={po.legacy.randglas=3}] run item replace entity @s hotbar.2 with minecraft:spectral_arrow[minecraft:item_name='[{"text":"FLECHES DIVINES","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Ces flèches créées par les dieux","bold":true,"color":"light_purple"},{"text":" ont "},{"text":"un pouvoir de perforation supérieur","color":"green"},{"text":"."}]','[{"text":"De plus, "},{"text":"un mortel","color":"aqua"},{"text":" touché par ces flèches "},{"text":"se mettra à briller","color":"gold"},{"text":"."}]','[{"text":"N\'importe qui","color":"aqua"},{"text":" se trouvant à proximité d\'une de ces flèches "},{"text":"sera","color":"red"}]','[{"text":"ralenti","color":"red"},{"text":"."}]','[{"text":"Ces projectiles","color":"light_purple"},{"text":" viennent d\'un autre univers et "},{"text":"ne subissent donc pas","color":"dark_green"}]','[{"text":"la gravité terrestre","color":"dark_green"},{"text":"."}]'],minecraft:enchantment_glint_override=true] 15
execute as @a[team=!hub,scores={po.legacy.randglas=3}] run tellraw @a[team=!hub] ["",{"selector":"@a[team=!hub,scores={po.legacy.randglas=3}]","color":"aqua"},{"text":" a obtenu les ","color":"gold"},{"text":"FLECHES DIVINES","bold":true,"color":"light_purple"}]
execute as @a[team=!hub,scores={po.legacy.randglas=4}] run item replace entity @s hotbar.2 with minecraft:amethyst_shard[minecraft:item_name='[{"text":"CRISTAL DE VIE","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Consommez cet item","color":"gold"},{"text":" pour "},{"text":"regagner une vie","bold":true,"color":"dark_green"}]','[{"text":"(Limité à 5)","color":"aqua"}]'],minecraft:enchantment_glint_override=true,minecraft:food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.05}] 1
execute as @a[team=!hub,scores={po.legacy.randglas=4}] run tellraw @a[team=!hub] ["",{"selector":"@a[team=!hub,scores={po.legacy.randglas=4}]","color":"aqua"},{"text":" a obtenu le ","color":"gold"},{"text":"CRISTAL DE VIE","bold":true,"color":"light_purple"}]
execute as @a[team=!hub,scores={po.legacy.randglas=5}] run item replace entity @s hotbar.2 with minecraft:goat_horn[minecraft:item_name='[{"text":"BOUCLIER CELESTE","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Consommez cet item","color":"gold"},{"text":" pour ne subir "},{"text":"aucun recul ","bold":true,"color":"light_purple"}]','[{"text":"pendant "},{"text":"10 secondes","color":"aqua"}]'],minecraft:enchantment_glint_override=true] 1
execute as @a[team=!hub,scores={po.legacy.randglas=5}] run tellraw @a[team=!hub] ["",{"selector":"@a[team=!hub,scores={po.legacy.randglas=5}]","color":"aqua"},{"text":" a obtenu le ","color":"gold"},{"text":"BOUCLIER CELESTE","bold":true,"color":"light_purple"}]
execute as @a[team=!hub,scores={po.legacy.randglas=1..}] run scoreboard players set @s po.legacy.randglas 0

#-------------------------------------------------------------------------------------------------------
#inversion des destins
execute as @a[scores={po.use.fate_inverse=1..}] run tag @r[scores={po.use.fate_inverse=0..},team=!hub,tag=!mort,limit=1] add reverseD
execute as @a[scores={po.use.fate_inverse=1..}] store result score @s po.use.fate_inverse run scoreboard players get @a[tag=reverseD,limit=1,sort=arbitrary] po.tech.remaining_lives
execute as @a[tag=reverseD] store result score @s po.tech.remaining_lives run scoreboard players get @a[scores={po.use.fate_inverse=1..},limit=1] po.tech.remaining_lives
execute as @a[scores={po.use.fate_inverse=1..}] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_purple"},{"text":" "},{"selector":"@s","bold":true},{"text":" échange son nombre de vies restantes avec ","color":"gold"},{"selector":"@a[tag=reverseD,limit=1]","bold":true},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_purple"}]
execute as @a[tag=reverseD] run tag @s remove reverseD
execute as @a[scores={po.use.fate_inverse=1..}] store result score @s po.tech.remaining_lives run scoreboard players get @s po.use.fate_inverse
execute as @a[scores={po.use.fate_inverse=1..}] run scoreboard players set @s po.use.fate_inverse 0

#--------------------------------------------------------------------------------------------------------
#ailes divines
execute as @a[scores={po.use.wings=1..}] run scoreboard players add @s po.use.wings 1
execute as @a[scores={po.use.wings=1..}] run item replace entity @s armor.chest with minecraft:elytra[minecraft:unbreakable={},minecraft:enchantment_glint_override=true] 1
execute as @a[scores={po.use.wings=1..}] run item replace entity @s hotbar.2 with firework_rocket 5
execute as @a[scores={po.use.wings=200..}] run clear @s minecraft:firework_rocket
execute as @a[scores={po.use.wings=200..},team=ranger] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:8156284,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=forestier] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:685103,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=mage] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:3847130,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=guerrier] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:11546150,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=necromancien] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:1908001,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=chevalier] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:16351261,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=chaman] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:1481884,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=druide] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:8439583,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=fantome] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:16383998,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.wings=200..},team=murloc] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:4783872,show_in_tooltip:0b}]
execute as @a[scores={po.use.wings=200..},team=batisseur] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:unbreakable={},minecraft:dyed_color={rgb:6697728}] 1
execute as @a[scores={po.use.wings=200..},team=assassin] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:8391698,show_in_tooltip:0b}]
execute as @a[scores={po.use.wings=200..},team=Chasseur] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:2048269,show_in_tooltip:0b}]
execute as @a[scores={po.use.wings=200..},team=GOD] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:16763955,show_in_tooltip:0b}]
execute as @a[scores={po.use.wings=200..},team=ingenieur] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:7307904,show_in_tooltip:0b}]
execute as @a[scores={po.use.wings=200..}] run scoreboard players set @s po.use.wings 0
#---------------------------------------------------------------------------------------------------
#fleches angeliques
execute as @e[type=minecraft:spectral_arrow,nbt={inGround:1b,life:200s}] run kill @s
execute if entity @a[tag=victoire] run kill @e[type=minecraft:spectral_arrow]
execute if entity @e[type=spectral_arrow] run execute at @e[type=minecraft:spectral_arrow] run particle minecraft:wax_off ~ ~ ~ 0 0 0 0.01 4 force @a
execute as @e[type=minecraft:spectral_arrow] run data merge entity @s {PierceLevel:1b,NoGravity:10b,pickup:0}
execute at @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] as @a[distance=..2,tag=!mort] run effect give @s minecraft:slowness 1 2 true
execute at @e[type=minecraft:spectral_arrow,nbt={inGround:1b}] as @a[distance=..2,tag=!mort] at @s run particle minecraft:wax_off ~ ~0.2 ~ 0.2 0.01 0.2 0.1 7 force @a
#---------------------------------------------------------------------------------------------------
#cristal de vie
execute as @a[scores={po.use.life_crystal=1..}] run scoreboard players add @s[scores={po.tech.remaining_lives=..4}] po.tech.remaining_lives 1
execute as @a[scores={po.use.life_crystal=1..}] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_purple"},{"text":" "},{"selector":"@s","bold":true},{"text":" a récupéré 1 vie !","color":"gold"},{"text":" A","bold":true,"obfuscated":true,"color":"dark_purple"}]
execute as @a[scores={po.use.life_crystal=1..}] run scoreboard players set @s po.use.life_crystal 0
#----------------------------------------------------------------------------------------------------
#bouclier celeste
execute as @a[scores={po.use.horn=1..}] run scoreboard players add @s po.use.horn 1
execute as @a[scores={po.use.horn=1..}] run clear @s goat_horn
execute at @a[scores={po.use.horn=1..}] run particle sculk_charge{roll:2} ~ ~1 ~ 0.3 0.5 0.3 0.01 7 force @a
execute as @a[scores={po.use.horn=1..}] run attribute @s generic.knockback_resistance base set 1
execute as @a[scores={po.use.horn=200..}] run attribute @s generic.knockback_resistance base set 0
execute as @a[scores={po.use.horn=200..}] run scoreboard players set @s po.use.horn 0