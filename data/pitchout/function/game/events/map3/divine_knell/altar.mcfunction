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
#gestion altar

execute if score timer po.cd.obj_angelique matches 1 run scoreboard players set altar po.cd.obj_angelique 0

execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 0 run fill 1621 46 97 1621 46 97 air replace bell
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 0 run fill 1612 74 109 1612 74 109 air replace bell
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 0 run fill 1529 46 108 1529 46 108 air replace bell

execute if score eventPartie po.legacy.eventtype matches 9 if score timer po.cd.obj_angelique matches 1800 store result score altar po.cd.obj_angelique run random value 1..3

execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 1 run fill 1621 46 97 1621 46 97 bell[facing=north] replace air
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 2 run fill 1612 74 109 1612 74 109 bell[facing=west] replace air
execute if score eventPartie po.legacy.eventtype matches 9 run execute if score altar po.cd.obj_angelique matches 3 run fill 1529 46 108 1529 46 108 bell[facing=west] replace air

execute if score altar po.cd.obj_angelique matches 1 run particle soul_fire_flame 1621 46.3 97 0.2 0.3 0.2 0.02 4 force @a
execute if score altar po.cd.obj_angelique matches 2 run particle soul_fire_flame 1612 74.3 109 0.2 0.3 0.2 0.02 4 force @a
execute if score altar po.cd.obj_angelique matches 3 run particle soul_fire_flame 1529 46.3 108 0.2 0.3 0.2 0.02 4 force @a

#---------------------------------------------------------------------------------------------------
#tellraw
execute if score eventPartie po.legacy.eventtype matches 9 if score timer po.cd.obj_angelique matches 2400.. run scoreboard players set timer po.cd.obj_angelique 0

execute if score timer po.cd.obj_angelique matches 1 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"1 minute 30","color":"dark_green"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 600 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"1 minute","color":"green"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1200 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"30 secondes","color":"yellow"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1600 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Appartion","color":"gold"},{"text":" du "},{"text":"Glas Divin","bold":true,"color":"aqua"},{"text":" dans "},{"text":"10 secondes","color":"dark_red"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]
execute if score timer po.cd.obj_angelique matches 1800 run tellraw @a[team=!hub] ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"},{"text":"\n\n"},{"text":"Le Glas Divin","bold":true,"color":"aqua"},{"text":" est apparu ! "},{"text":"Sonnez-le","bold":true,"color":"dark_red"},{"text":" en\npremier","color":"green"},{"text":" pour obtenir "},{"text":"une récompense !","color":"gold"},{"text":"\n"},{"text":"(30 secondes avant disparition ! )","color":"aqua"},{"text":"\n\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"gold"}]