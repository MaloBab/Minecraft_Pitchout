#affectation des scores
execute as @a[scores={menumap=2}] store result score @s map1 run clear @s minecraft:sandstone
execute as @a[scores={map1=1}] run scoreboard players set @s map1b 1
execute as @a[scores={map1=1}] run scoreboard players set @s map2b 0
execute as @a[scores={map1=1}] run scoreboard players set @s map3b 0
execute as @a[scores={map1=1}] run scoreboard players set @s map4b 0
execute as @a[scores={map1=1}] run tellraw @s ["",{"text":"[MAP VOTE]","bold":true,"color":"dark_blue"},{"text":" Vous avez voté pour la map "},{"text":"Desert Arena","bold":true,"color":"gold"},{"text":" !"}]

execute as @a[scores={menumap=2}] store result score @s map2 run clear @s minecraft:crying_obsidian
execute as @a[scores={map2=1}] run scoreboard players set @s map2b 1
execute as @a[scores={map2=1}] run scoreboard players set @s map1b 0
execute as @a[scores={map2=1}] run scoreboard players set @s map3b 0
execute as @a[scores={map2=1}] run scoreboard players set @s map4b 0
execute as @a[scores={map2=1}] run tellraw @s ["",{"text":"[MAP VOTE]","bold":true,"color":"dark_blue"},{"text":" Vous avez voté pour la map "},{"text":"Old Gods Mind","bold":true,"color":"dark_purple"},{"text":" !"}]

execute as @a[scores={menumap=2}] store result score @s map3 run clear @s minecraft:spruce_planks
execute as @a[scores={map3=1}] run scoreboard players set @s map3b 1
execute as @a[scores={map3=1}] run scoreboard players set @s map1b 0
execute as @a[scores={map3=1}] run scoreboard players set @s map2b 0
execute as @a[scores={map3=1}] run scoreboard players set @s map4b 0
execute as @a[scores={map3=1}] run tellraw @s ["",{"text":"[MAP VOTE]","bold":true,"color":"dark_blue"},{"text":" Vous avez voté pour la map "},{"text":"Paradise Garden","bold":true,"color":"aqua"},{"text":" !"}]

execute as @a[scores={menumap=2}] store result score @s map4 run clear @s minecraft:copper_grate
execute as @a[scores={map4=1}] run scoreboard players set @s map4b 1
execute as @a[scores={map4=1}] run scoreboard players set @s map1b 0
execute as @a[scores={map4=1}] run scoreboard players set @s map2b 0
execute as @a[scores={map4=1}] run scoreboard players set @s map3b 0
execute as @a[scores={map4=1}] run tellraw @s ["",{"text":"[MAP VOTE]","bold":true,"color":"dark_blue"},{"text":" Vous avez voté pour la map "},{"text":"Airship Town","bold":true,"color":"red"},{"text":" !"}]
#---------------------------------------------------------------
#gestion menumap kit

scoreboard players add @a[scores={menumap=..1},nbt={SelectedItem:{id:"minecraft:compass"}},team=hub] menumap 1
execute if entity @a[scores={menumap=1},team=hub] run execute as @a[scores={menumap=1},team=hub] at @s run summon minecraft:chest_minecart ~ ~1.6 ~ {CustomName:'["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" MAP ","bold":true,"color":"dark_blue"},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]',NoGravity:1b,Tags:["coffremap"],Items:[{id:"white_wool",count:1,Slot:0},{id:"white_wool",count:1,Slot:1},{id:"white_wool",count:1,Slot:9},{id:"white_wool",count:1,Slot:10},{id:"white_wool",count:1,Slot:18},{id:"white_wool",count:1,Slot:19},{id:"white_wool",count:1,Slot:2},{id:"white_wool",count:1,Slot:3}]}
execute as @a[scores={menumap=2},team=hub] at @s run tp @e[tag=coffremap,sort=nearest,limit=1] ~ ~1.6 ~
execute as @a[team=hub,scores={menumap=1..},nbt=!{SelectedItem:{id:"minecraft:compass"}}] at @s run kill @e[distance=..2,tag=coffremap,sort=nearest]
scoreboard players set @a[scores={menumap=1..},team=hub,nbt=!{SelectedItem:{id:"minecraft:compass"}}] menumap 0

#---------------------------------------------------------------
#affichage items
execute as @e[type=chest_minecart,tag=coffremap] run data modify entity @s Items set value [{id:"white_wool",count:1,Slot:0},{id:"white_wool",count:1,Slot:1},{id:"white_wool",count:1,Slot:2},{id:"white_wool",count:1,Slot:3},{id:"white_wool",count:1,Slot:9},{id:"white_wool",count:1,Slot:10},{id:"white_wool",count:1,Slot:18},{id:"white_wool",count:1,Slot:19}]
execute at @a[scores={menumap=2,map1b=0}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 0b,id:"minecraft:sandstone",count:1b,components:{custom_name:'[{"text":"Desert Arena (Moyenne)","color":"gold","bold":true}]'}}
execute at @a[scores={menumap=2,map2b=0}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 9b,id:"minecraft:crying_obsidian",count:1b,components:{custom_name:'[{"text":"Old Gods Mind (Petite)","color":"dark_purple","bold":true}]'}}
execute at @a[scores={menumap=2,map3b=0}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 18b,id:"minecraft:spruce_planks",count:1b,components:{custom_name:'[{"text":"Paradise Garden (Grande)","color":"aqua","bold":true}]'}}
execute at @a[scores={menumap=2,map4b=0}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 2b,id:"minecraft:copper_grate",count:1b,components:{custom_name:'[{"text":"Airship Town (Grande)","color":"red","bold":true}]'}}



execute at @a[scores={menumap=2,map1b=1..}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 0b,id:"minecraft:sandstone",count:1b,components:{custom_name:'[{"text":"Desert Arena (Moyenne)","color":"gold","bold":true}]',enchantments:{levels:{"minecraft:lure":1},show_in_tooltip:false}}}
execute at @a[scores={menumap=2,map2b=1..}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 9b,id:"minecraft:crying_obsidian",count:1b,components:{custom_name:'[{"text":"Old Gods Mind (Petite)","color":"dark_purple","bold":true}]',enchantments:{levels:{"minecraft:lure":1},show_in_tooltip:false}}}
execute at @a[scores={menumap=2,map3b=1..}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 18b,id:"minecraft:spruce_planks",count:1b,components:{custom_name:'[{"text":"Paradise Garden (Grande)","color":"aqua","bold":true}]',enchantments:{levels:{"minecraft:lure":1},show_in_tooltip:false}}}
execute at @a[scores={menumap=2,map4b=1..}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 2b,id:"minecraft:copper_grate",count:1b,components:{custom_name:'[{"text":"Airship Town (Grande)","color":"red","bold":true}]',enchantments:{levels:{"minecraft:lure":1},show_in_tooltip:false}}}

#---------------------------------------------------------------
#affichage du nombre de vote
execute as @a[team=hub,scores={map1=1..}] run scoreboard players set total map1b 0
execute as @a[team=hub,scores={map1=1..}] run scoreboard players set total map2b 0
execute as @a[team=hub,scores={map1=1..}] run scoreboard players set total map3b 0
execute as @a[team=hub,scores={map1=1..}] run scoreboard players set total map4b 0
execute as @a[team=hub,scores={map1=1..}] run scoreboard players operation total map1b += @a[team=hub] map1b
execute as @a[team=hub,scores={map1=1..}] run scoreboard players operation total map2b += @a[team=hub] map2b
execute as @a[team=hub,scores={map1=1..}] run scoreboard players operation total map3b += @a[team=hub] map3b
execute as @a[team=hub,scores={map1=1..}] run scoreboard players operation total map4b += @a[team=hub] map4b


execute as @a[team=hub,scores={map2=1..}] run scoreboard players set total map1b 0
execute as @a[team=hub,scores={map2=1..}] run scoreboard players set total map2b 0
execute as @a[team=hub,scores={map2=1..}] run scoreboard players set total map3b 0
execute as @a[team=hub,scores={map2=1..}] run scoreboard players set total map4b 0
execute as @a[team=hub,scores={map2=1..}] run scoreboard players operation total map1b += @a[team=hub] map1b
execute as @a[team=hub,scores={map2=1..}] run scoreboard players operation total map2b += @a[team=hub] map2b
execute as @a[team=hub,scores={map2=1..}] run scoreboard players operation total map3b += @a[team=hub] map3b
execute as @a[team=hub,scores={map2=1..}] run scoreboard players operation total map4b += @a[team=hub] map4b

execute as @a[team=hub,scores={map3=1..}] run scoreboard players set total map1b 0
execute as @a[team=hub,scores={map3=1..}] run scoreboard players set total map2b 0
execute as @a[team=hub,scores={map3=1..}] run scoreboard players set total map3b 0
execute as @a[team=hub,scores={map3=1..}] run scoreboard players set total map4b 0
execute as @a[team=hub,scores={map3=1..}] run scoreboard players operation total map1b += @a[team=hub] map1b
execute as @a[team=hub,scores={map3=1..}] run scoreboard players operation total map2b += @a[team=hub] map2b
execute as @a[team=hub,scores={map3=1..}] run scoreboard players operation total map3b += @a[team=hub] map3b
execute as @a[team=hub,scores={map3=1..}] run scoreboard players operation total map4b += @a[team=hub] map4b

execute as @a[team=hub,scores={map4=1..}] run scoreboard players set total map1b 0
execute as @a[team=hub,scores={map4=1..}] run scoreboard players set total map2b 0
execute as @a[team=hub,scores={map4=1..}] run scoreboard players set total map3b 0
execute as @a[team=hub,scores={map4=1..}] run scoreboard players set total map4b 0
execute as @a[team=hub,scores={map4=1..}] run scoreboard players operation total map1b += @a[team=hub] map1b
execute as @a[team=hub,scores={map4=1..}] run scoreboard players operation total map2b += @a[team=hub] map2b
execute as @a[team=hub,scores={map4=1..}] run scoreboard players operation total map3b += @a[team=hub] map3b
execute as @a[team=hub,scores={map4=1..}] run scoreboard players operation total map4b += @a[team=hub] map4b

scoreboard players set @a[team=!hub] map1b 0
scoreboard players set @a[team=!hub] map2b 0
scoreboard players set @a[team=!hub] map3b 0
scoreboard players set @a[team=!hub] map4b 0
execute unless entity @a[team=hub] run scoreboard players set total map1b 0
execute unless entity @a[team=hub] run scoreboard players set total map2b 0
execute unless entity @a[team=hub] run scoreboard players set total map3b 0
execute unless entity @a[team=hub] run scoreboard players set total map4b 0

execute if score total map1b matches 0 run execute at @a[scores={menumap=2}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 1b,id:"minecraft:red_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Non-voté","color":"dark_red","bold":true}]'}}
execute if score total map2b matches 0 run execute at @a[scores={menumap=2}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 10b,id:"minecraft:red_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Non-voté","color":"dark_red","bold":true}]'}}
execute if score total map3b matches 0 run execute at @a[scores={menumap=2}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 19b,id:"minecraft:red_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Non-voté","color":"dark_red","bold":true}]'}}
execute if score total map4b matches 0 run execute at @a[scores={menumap=2}] run data modify entity @e[type=chest_minecart,tag=coffremap,limit=1,sort=nearest] Items append value {Slot: 3b,id:"minecraft:red_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Non-voté","color":"dark_red","bold":true}]'}}

execute if score total map1b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] run data modify entity @s Items append value {Slot: 1b,id:"minecraft:lime_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Voté","color":"green","bold":true}]'}}
execute if score total map2b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] run data modify entity @s Items append value {Slot: 10b,id:"minecraft:lime_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Voté","color":"green","bold":true}]'}}
execute if score total map3b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] run data modify entity @s Items append value {Slot: 19b,id:"minecraft:lime_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Voté","color":"green","bold":true}]'}}
execute if score total map4b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] run data modify entity @s Items append value {Slot: 3b,id:"minecraft:lime_stained_glass_pane",count:1b,components:{custom_name:'[{"text":"Voté","color":"green","bold":true}]'}}

execute if score total map1b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] store result entity @s Items[1].count byte 1 run scoreboard players get total map1b
execute if score total map2b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] store result entity @s Items[5].count byte 1 run scoreboard players get total map2b
execute if score total map3b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] store result entity @s Items[7].count byte 1 run scoreboard players get total map3b
execute if score total map4b matches 1.. run execute as @e[type=chest_minecart,tag=coffremap] store result entity @s Items[3].count byte 1 run scoreboard players get total map4b