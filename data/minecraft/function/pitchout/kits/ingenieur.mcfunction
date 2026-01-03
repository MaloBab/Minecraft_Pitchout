#gestion pieces
execute as @a[team=ingenieur] run title @s actionbar ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" Pièces détachées :","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"pieces"},"bold":true,"color":"aqua"}]
execute as @e[type=item,tag=!vide] run execute at @s run execute unless entity @a[team=ingenieur,distance=..2] run data modify entity @s PickupDelay set value -1
execute as @e[type=item,tag=!vide] run execute at @s run execute if entity @a[team=ingenieur,distance=..2] run data modify entity @s PickupDelay set value 0
clear @a minecraft:iron_nugget


execute store result score max pieces run execute if entity @e[type=item,nbt={Item:{id:"minecraft:iron_nugget"}}]
execute if score max pieces matches 100.. run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_nugget"}},limit=1,sort=arbitrary]

#-----------------------------------------------------------------------------------------
#apparition pieces

execute if entity @a[team=ingenieur] run scoreboard players add timer pieces 1

execute if score select map matches 1 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 6.55 12.44 10 50 false @e[type=item,distance=..2]
execute if score select map matches 2 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 587 96 5 50 false @e[type=item,distance=..2]
execute if score select map matches 3 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 1572 108 5 60 false @e[type=item,distance=..2]

execute if score timer pieces matches 8.. run summon item 294 42 97 {Item:{id:"minecraft:iron_nugget",count:1b}}
execute if score timer pieces matches 8.. run scoreboard players set timer pieces 0

execute if entity @a[team=ingenieur] run scoreboard players add timePlan pieces 1
execute if score timePlan pieces matches 307.. run scoreboard players set timePlan pieces 0
#----------------------------------------------------------------------------------------
#gestion plans

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:creeper_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:globe_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:flower_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:piglin_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:skull_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:mojang_banner_pattern"}}] run particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force

#----------------------------------------------------------------------------------------
#selection jeu de plans
execute if entity @a[team=ingenieur] run execute store result score item plan run random value 0..3

execute if entity @a[team=ingenieur] run execute if score select plan matches 0 run execute store result score select plan run random value 1..15
execute unless entity @a[team=!hub] run scoreboard players set select plan 0
#----------------------------------------------------------------------------------------
#apparition plan sur la map

execute if score timePlan pieces matches 306.. if score select plan matches 1 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 111 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 1 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 111 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 1 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 111 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 1 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 111 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 2 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 109 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 2 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 109 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 2 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 109 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 2 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 109 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 3 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 107 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 3 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 107 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 3 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 107 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 3 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 107 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 4 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 105 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 4 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 105 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 4 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 105 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 4 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 105 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 5 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 103 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 5 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 103 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 5 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 103 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 5 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 103 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 6 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 101 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 6 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 101 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 6 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 101 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 6 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 101 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 7 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 99 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 7 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 99 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 7 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 99 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 7 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 288 41 99 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 8 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 111 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 8 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 111 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 8 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 111 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 8 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 111 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 9 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 109 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 9 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 109 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 9 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 109 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 9 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 109 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 10 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 107 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 10 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 107 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 10 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 107 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 10 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 107 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 11 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 105 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 11 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 105 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 11 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 105 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 11 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 105 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 12 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 103 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 12 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 103 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 12 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 103 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 12 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 103 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 13 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 101 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 13 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 101 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 13 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 101 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 13 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 101 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 14 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 99 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 14 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 99 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 14 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 99 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 14 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 290 41 99 Items[3]

execute if score timePlan pieces matches 306.. if score select plan matches 15 if score item plan matches 0 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 292 41 111 Items[0]
execute if score timePlan pieces matches 306.. if score select plan matches 15 if score item plan matches 1 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 292 41 111 Items[1]
execute if score timePlan pieces matches 306.. if score select plan matches 15 if score item plan matches 2 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 292 41 111 Items[2]
execute if score timePlan pieces matches 306.. if score select plan matches 15 if score item plan matches 3 run data modify entity @e[type=item,sort=random,limit=1] Item merge from block 292 41 111 Items[3]




#----------------------------------------------------------------------------------------
#tourelle
execute store result score nbBullet balise run execute if entity @e[type=minecraft:armor_stand,tag=Bullet]


execute as @a[scores={TourelleP=1..},tag=!safeT] run tag @s add safeT
execute at @e[tag=Tourelle] run particle minecraft:crit ~ ~0.5 ~ 0.2 0.2 0.2 0.5 1 force

execute as @e[type=minecraft:armor_stand,tag=Tourelle] run scoreboard players add @s lifeTourelle 1
execute as @a[tag=safeT] run scoreboard players add @s lifeTourelle 1

execute at @e[type=minecraft:armor_stand,tag=Tourelle,scores={lifeTourelle=..419}] run setblock ~ ~ ~ minecraft:note_block keep
execute at @e[type=minecraft:armor_stand,tag=Tourelle,scores={lifeTourelle=..419}] run setblock ~ ~1 ~ minecraft:black_stained_glass_pane keep


execute as @a[scores={PoseTourelle=1..}] run scoreboard players remove @s pieces 50
execute as @a[scores={PoseTourelle=1..}] run item replace entity @s hotbar.2 with minecraft:creeper_banner_pattern[minecraft:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @a[scores={PoseTourelle=1..}] run scoreboard players set @s PoseTourelle 0

execute at @e[type=minecraft:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:note_block
execute at @e[type=minecraft:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:black_stained_glass_pane
execute as @e[type=minecraft:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run kill @s

execute as @a[scores={TourelleP=1..,lifeTourelle=420..}] run scoreboard players set @s TourelleP 0
execute as @a[scores={lifeTourelle=420..}] run tag @s remove safeT
execute as @a[scores={lifeTourelle=420..}] run scoreboard players set @s lifeTourelle 0



execute as @e[tag=Tourelle,type=minecraft:armor_stand] run execute at @s run tp @s ~ ~ ~ facing entity @e[tag=!safeT,distance=..25,limit=1,sort=nearest,type=!minecraft:armor_stand,type=!minecraft:item,type=!arrow,type=!item_frame,type=!area_effect_cloud,type=!glow_item_frame]
execute as @e[type=minecraft:armor_stand,tag=Tourelle] run execute at @s if entity @e[tag=!safeT,distance=..20,limit=1,sort=nearest,type=!minecraft:armor_stand,type=!minecraft:item,type=!arrow,type=!item_frame,type=!area_effect_cloud] run scoreboard players add @s TimeTourelle 1
execute as @e[type=minecraft:armor_stand,tag=Tourelle] run execute at @s run tp @e[tag=Bullet,distance=..1] @s
scoreboard players add @e[name="Bullet"] lifeBullet 1
kill @e[tag=Bullet,scores={lifeBullet=50..}]
execute at @e[tag=Bullet] run tp @e[distance=..1,limit=1,tag=Bullet] ^ ^ ^3
execute at @e[tag=Bullet] if entity @e[tag=!safeT,distance=..2,limit=1,sort=nearest,type=!minecraft:armor_stand,type=!minecraft:item,type=!arrow,type=!area_effect_cloud,type=!glow_item_frame,type=!item_frame,type=!area_effect_cloud] run summon minecraft:creeper ~ ~1 ~ {NoAI:1b,Silent:1b,ExplosionRadius:4,Invulnerable:1b,Fuse:0,ignited:1b}
execute if score nbBullet balise >= 16 balise run kill @e[type=minecraft:armor_stand,tag=Bullet,limit=1]
execute unless entity @e[type=minecraft:armor_stand,tag=Tourelle] run kill @e[type=minecraft:armor_stand,tag=Bullet]

execute as @e[type=minecraft:armor_stand,tag=Tourelle] run execute at @s run execute if entity @e[tag=!safeT,distance=..20,limit=1,sort=nearest,type=!minecraft:armor_stand,type=!minecraft:item,type=!arrow,type=!item_frame,type=!area_effect_cloud,type=!area_effect_cloud,type=!glow_item_frame] if score @s TimeTourelle matches 10.. run summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],HandItems:[{},{}],Tags:["Bullet"]}
execute as @e[type=minecraft:armor_stand,tag=Tourelle,scores={TimeTourelle=10..}] run scoreboard players set @s TimeTourelle 0

#----------------------------------------------------------------------------
#flaque d'huile
execute positioned 291 41 97 run execute as @a[scores={huile=1..}] run execute store result score @s piegehuile run execute if entity @e[type=minecraft:glow_item_frame,tag=Huile,distance=..2]

execute at @e[type=minecraft:glow_item_frame,tag=Huile] run particle minecraft:dripping_honey ~ ~ ~ 1 0.01 1 1 3 force
execute as @a[scores={huile=1..}] run execute unless entity @s[scores={piegehuile=15..}] run summon minecraft:glow_item_frame 291 41 97 {Tags:["Huile"]}
execute as @a[scores={piegehuile=1}] run scoreboard players remove @s pieces 40
execute as @a[scores={piegehuile=1}] run item replace entity @s hotbar.3 with minecraft:globe_banner_pattern[minecraft:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @e[type=minecraft:glow_item_frame,tag=Huile] run data merge entity @s {Invulnerable:1b,Invisible:1b,Item:{id:"minecraft:yellow_stained_glass_pane",Count:1b},OnGround:0b,Facing:1b}

execute if score select map matches 1 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 6.55 12.44 10 50 false @e[type=minecraft:glow_item_frame,tag=Huile]
execute if score select map matches 2 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 587 96 8 50 false @e[type=minecraft:glow_item_frame,tag=Huile]
execute if score select map matches 3 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 1572 108 5 60 false @e[type=minecraft:glow_item_frame,tag=Huile]

execute as @a[scores={huile=1..,piegehuile=10..}] run scoreboard players set @s huile 0
execute as @a[scores={piegehuile=10..}] run scoreboard players set @s piegehuile 0

execute at @e[type=minecraft:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run tag @s add flot
execute as @a[tag=flot] run attribute @s generic.gravity base set 0
execute as @a[tag=flot] run scoreboard players add @s flotHuile 1
execute as @a[tag=flot,scores={flotHuile=80..}] run attribute @s generic.gravity base set 0.08
execute as @a[tag=flot,scores={flotHuile=80..}] run tag @s remove flot
execute as @a[scores={flotHuile=80..}] run scoreboard players set @s flotHuile 0
execute at @e[type=minecraft:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run effect give @s minecraft:nausea 10 2 true
execute at @e[type=minecraft:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run execute at @s run kill @e[type=minecraft:glow_item_frame,tag=Huile,distance=..2.6,limit=1]

#----------------------------------------------------------------------------
#repulseur
execute as @a[scores={Repulseur=1..}] if entity @e[tag=Repul,scores={lifeTourelle=1}] run scoreboard players remove @s pieces 35
execute at @e[tag=Repul] run particle minecraft:shriek{delay:2} ~ ~1.3 ~ 0.2 1.3 0.2 0.2 2 force
execute at @e[tag=Repul] run particle minecraft:block{block_state:{Name:stone}} ~ ~ ~ 3 0.2 3 0.3 10 force
execute as @a[scores={Repulseur=1..}] if entity @e[tag=Repul,scores={lifeTourelle=1}] run item replace entity @s hotbar.4 with minecraft:flower_banner_pattern[minecraft:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute at @e[tag=Repul] run execute as @a[distance=..8,scores={Repulseur=0}] run execute at @s run tp @s ^ ^0.5 ^-1.5 facing entity @e[tag=Repul,sort=nearest,limit=1]

execute at @e[tag=Repul] run setblock ~ ~ ~ minecraft:piston[facing=up] replace
execute at @e[tag=Repul] run setblock ~ ~1 ~ minecraft:sculk_sensor replace

execute as @e[tag=Repul] run scoreboard players add @s lifeTourelle 1
execute at @e[tag=Repul,scores={lifeTourelle=300..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Tags:["RFin"]}
execute if entity @e[tag=Repul,scores={lifeTourelle=300..}] run execute as @a[scores={Repulseur=1..},limit=1,sort=arbitrary] run scoreboard players set @s Repulseur 0
execute as @e[tag=Repul,scores={lifeTourelle=300..}] run kill @s

execute at @e[tag=RFin] run fill ~ ~ ~ ~ ~1 ~ air replace minecraft:piston
execute at @e[tag=RFin] run fill ~ ~ ~ ~ ~1 ~ air replace minecraft:sculk_sensor

#------------------------------------------------------------------------------
#vision
execute at @e[type=minecraft:armor_stand,tag=Vision] run setblock ~ ~ ~ minecraft:copper_block keep
execute at @e[type=minecraft:armor_stand,tag=Vision] run setblock ~ ~1 ~ minecraft:end_rod keep
execute at @e[type=minecraft:armor_stand,tag=Vision] run particle minecraft:flash ~ ~0.6 ~ 1.5 0.8 1.5 2 1 force

execute as @e[type=minecraft:armor_stand,tag=Vision,scores={timeVision=1}] run execute as @a[scores={Vision=1..}] run scoreboard players remove @s pieces 25
execute as @e[type=minecraft:armor_stand,tag=Vision,scores={timeVision=1}] run execute as @a[scores={Vision=1..}] run item replace entity @s hotbar.5 with piglin_banner_pattern[minecraft:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"25 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b}] 1


execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run attribute @s[distance=..15] generic.scale base set 0.1
execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run attribute @s[distance=15..] generic.scale base set 1
execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run effect give @s[distance=..15] speed 1 5 true
execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=0}] run attribute @s[distance=..15] generic.scale base set 2.5
execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=0}] run attribute @s[distance=15..] generic.scale base set 1
execute at @e[type=minecraft:armor_stand,tag=Vision] as @a[scores={Vision=0}] run effect give @s[distance=..15] slowness 1 2 true

execute as @e[type=minecraft:armor_stand,tag=Vision] run scoreboard players add @s timeVision 1
execute at @e[type=minecraft:armor_stand,scores={timeVision=300..}] as @a[distance=..15] run attribute @s generic.scale base set 1
execute as @e[type=minecraft:armor_stand,tag=Vision,scores={timeVision=300..}] run execute as @a[scores={Vision=1..}] run scoreboard players set @s Vision 0
execute at @e[type=minecraft:armor_stand,scores={timeVision=300..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:copper_block
execute at @e[type=minecraft:armor_stand,scores={timeVision=300..}] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:end_rod
execute as @e[type=minecraft:armor_stand,scores={timeVision=300..}] run kill @s

#-----------------------------------------------------------------------------
#mine
execute at @e[tag=MINE,type=minecraft:area_effect_cloud] run particle minecraft:block{block_state:{Name:tnt}} ~ ~ ~ 0 0.1 0 10 1 force

execute as @a[scores={mine=1..}] run scoreboard players remove @s pieces 10
execute as @a[scores={mine=1..}] run item replace entity @s hotbar.6 with minecraft:skull_banner_pattern[minecraft:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[scores={mine=1..}] run scoreboard players set @s mine 0

execute at @a[gamemode=!spectator] run execute as @e[type=minecraft:area_effect_cloud,distance=..2,tag=MINE] run tag @s add use
execute at @a[gamemode=!spectator] run execute if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=MINE,tag=use] run summon minecraft:creeper ~ ~0.2 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:6,Fuse:0,ignited:1b}
execute at @a[gamemode=!spectator] run execute if entity @e[type=minecraft:area_effect_cloud,distance=..2,tag=MINE,tag=use] run summon minecraft:creeper ~ ~0.2 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:6,Fuse:0,ignited:1b}
execute as @e[type=minecraft:area_effect_cloud,tag=MINE,tag=use] run kill @s

#--------------------------------------------------------------------------------
#aimant
execute as @a[scores={aimant=1..}] run scoreboard players add @s aimant 1

execute as @a[scores={aimant=1..2}] run tag @s add aimant
execute at @a[tag=aimant] run execute as @e[type=item,distance=..8] run execute at @s run tp @s ^ ^0.1 ^0.25 facing entity @a[tag=aimant,limit=1,sort=nearest]
execute as @a[scores={aimant=2}] run scoreboard players remove @s pieces 15
execute as @a[scores={aimant=2}] run item replace entity @s hotbar.7 with minecraft:mojang_banner_pattern[minecraft:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[scores={aimant=400..},tag=aimant] run tag @s remove aimant
execute as @a[scores={aimant=400..}] run scoreboard players set @s aimant 0

#--------------------------------------------------------------------------------
#placement des plans dans l'inventaire
execute as @a[scores={nbPlan1=1..}] run clear @s minecraft:creeper_banner_pattern
execute as @a[scores={nbPlan1=1..}] run item replace entity @s hotbar.2 with minecraft:creeper_banner_pattern[minecraft:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @a[scores={nbPlan1=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan1=1..}] run scoreboard players set @s nbPlan1 0

execute as @a[scores={nbPlan2=1..}] run clear @s minecraft:globe_banner_pattern
execute as @a[scores={nbPlan2=1..}] run item replace entity @s hotbar.3 with minecraft:globe_banner_pattern[minecraft:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @a[scores={nbPlan2=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan2=1..}] run scoreboard players set @s nbPlan2 0

execute as @a[scores={nbPlan3=1..}] run clear @s minecraft:flower_banner_pattern
execute as @a[scores={nbPlan3=1..}] run item replace entity @s hotbar.4 with minecraft:flower_banner_pattern[minecraft:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan3=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan3=1..}] run scoreboard players set @s nbPlan3 0

execute as @a[scores={nbPlan4=1..}] run clear @s minecraft:piglin_banner_pattern
execute as @a[scores={nbPlan4=1..}] run item replace entity @s hotbar.5 with minecraft:piglin_banner_pattern[minecraft:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"30 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b}] 1
execute as @a[scores={nbPlan4=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan4=1..}] run scoreboard players set @s nbPlan4 0

execute as @a[scores={nbPlan5=1..}] run clear @s minecraft:skull_banner_pattern
execute as @a[scores={nbPlan5=1..}] run item replace entity @s hotbar.6 with minecraft:skull_banner_pattern[minecraft:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan5=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan5=1..}] run scoreboard players set @s nbPlan5 0

execute as @a[scores={nbPlan6=1..}] run clear @s minecraft:mojang_banner_pattern
execute as @a[scores={nbPlan6=1..}] run item replace entity @s hotbar.7 with minecraft:mojang_banner_pattern[minecraft:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan6=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan6=1..}] run scoreboard players set @s nbPlan6 0
#-----------------------------------------------------------------------------
#transformation plan --> item
execute as @a[nbt={SelectedItem:{id:"minecraft:creeper_banner_pattern"}},scores={pieces=50..}] run item replace entity @s weapon.mainhand with minecraft:enderman_spawn_egg[minecraft:entity_data={ArmorItems:[{},{},{},{count:1,id:"minecraft:dispenser"}],DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Tourelle"],id:"minecraft:armor_stand"},minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"minecraft:crying_obsidian"},{blocks:"minecraft:obsidian"},{blocks:"minecraft:deepslate_coal_ore"},{blocks:"minecraft:dead_brain_coral_block"},{blocks:"minecraft:stone_bricks"},{blocks:"minecraft:mossy_stone_bricks"},{blocks:"minecraft:cracked_stone_bricks"},{blocks:"minecraft:dripstone_block"},{blocks:"minecraft:brown_concrete_powder"},{blocks:"minecraft:sandstone"},{blocks:"minecraft:packed_ice"},{blocks:"minecraft:bone_block"},{blocks:"minecraft:oak_planks"},{blocks:"minecraft:oak_slab"},{blocks:"minecraft:oak_stairs"},{blocks:"minecraft:stone_brick_wall"},{blocks:"minecraft:iron_bars"},{blocks:"minecraft:chain"},{blocks:"minecraft:soul_sand"},{blocks:"minecraft:brown_concrete"},{blocks:"minecraft:warped_stem"},{blocks:"minecraft:blue_terracotta"},{blocks:"minecraft:purple_concrete"},{blocks:"minecraft:amethyst_block"},{blocks:"minecraft:basalt"},{blocks:"minecraft:crimson_hyphae"},{blocks:"minecraft:purpur_block"},{blocks:"minecraft:diamond_block"},{blocks:"minecraft:spruce_planks"},{blocks:"minecraft:stone_brick_stairs"},{blocks:"minecraft:cherry_planks"},{blocks:"minecraft:stone_brick_slab"},{blocks:"minecraft:cherry_leaves"},{blocks:"minecraft:cherry_slab"},{blocks:"minecraft:cherry_fence"},{blocks:"minecraft:grass_block"},{blocks:"minecraft:cherry_log"},{blocks:"minecraft:spruce_slab"},{blocks:"minecraft:gray_stained_glass"},{blocks:"minecraft:moss_carpet"},{blocks:"minecraft:mangrove_roots"},{blocks:"minecraft:mangrove_planks"},{blocks:"minecraft:mangrove_leaves"},{blocks:"minecraft:spruce_trapdoor"},{blocks:"minecraft:oak_fence"},{blocks:"minecraft:mangrove_log"},{blocks:"minecraft:blue_stained_glass"},{blocks:"minecraft:purple_stained_glass"},{blocks:"minecraft:pink_stained_glass"},{blocks:"minecraft:orange_stained_glass"},{blocks:"minecraft:lime_stained_glass"},{blocks:"minecraft:white_stained_glass"},{blocks:"minecraft:yellow_stained_glass"},{blocks:"minecraft:red_stained_glass"},{blocks:"minecraft:light_blue_stained_glass"},{blocks:"minecraft:cyan_stained_glass"},{blocks:"minecraft:mangrove_slab"}],show_in_tooltip:0b},minecraft:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @a[nbt={Inventory:[{id:"minecraft:enderman_spawn_egg"}]},nbt=!{SelectedItem:{id:"minecraft:enderman_spawn_egg"}}] run item replace entity @s hotbar.2 with minecraft:creeper_banner_pattern[minecraft:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',minecraft:hide_additional_tooltip={}]

execute as @a[nbt={SelectedItem:{id:"minecraft:globe_banner_pattern"}},scores={pieces=40..}] run item replace entity @s weapon.mainhand with minecraft:honeycomb[minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',minecraft:hide_additional_tooltip={}] 1
execute as @a[nbt={Inventory:[{id:"minecraft:honeycomb"}]},nbt=!{SelectedItem:{id:"minecraft:honeycomb"}}] run item replace entity @s hotbar.3 with minecraft:globe_banner_pattern[minecraft:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',minecraft:hide_additional_tooltip={}]

execute as @a[nbt={SelectedItem:{id:"minecraft:flower_banner_pattern"}},scores={pieces=35..}] run item replace entity @s weapon.mainhand with minecraft:shulker_spawn_egg[minecraft:entity_data={Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Repul"],id:"minecraft:armor_stand"},minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"minecraft:crying_obsidian"},{blocks:"minecraft:obsidian"},{blocks:"minecraft:deepslate_coal_ore"},{blocks:"minecraft:dead_brain_coral_block"},{blocks:"minecraft:stone_bricks"},{blocks:"minecraft:mossy_stone_bricks"},{blocks:"minecraft:cracked_stone_bricks"},{blocks:"minecraft:dripstone_block"},{blocks:"minecraft:brown_concrete_powder"},{blocks:"minecraft:sandstone"},{blocks:"minecraft:packed_ice"},{blocks:"minecraft:bone_block"},{blocks:"minecraft:oak_planks"},{blocks:"minecraft:oak_slab"},{blocks:"minecraft:oak_stairs"},{blocks:"minecraft:stone_brick_wall"},{blocks:"minecraft:iron_bars"},{blocks:"minecraft:chain"},{blocks:"minecraft:soul_sand"},{blocks:"minecraft:brown_concrete"},{blocks:"minecraft:warped_stem"},{blocks:"minecraft:blue_terracotta"},{blocks:"minecraft:purple_concrete"},{blocks:"minecraft:amethyst_block"},{blocks:"minecraft:basalt"},{blocks:"minecraft:crimson_hyphae"},{blocks:"minecraft:purpur_block"},{blocks:"minecraft:diamond_block"},{blocks:"minecraft:spruce_planks"},{blocks:"minecraft:stone_brick_stairs"},{blocks:"minecraft:cherry_planks"},{blocks:"minecraft:stone_brick_slab"},{blocks:"minecraft:cherry_leaves"},{blocks:"minecraft:cherry_slab"},{blocks:"minecraft:cherry_fence"},{blocks:"minecraft:grass_block"},{blocks:"minecraft:cherry_log"},{blocks:"minecraft:spruce_slab"},{blocks:"minecraft:gray_stained_glass"},{blocks:"minecraft:moss_carpet"},{blocks:"minecraft:mangrove_roots"},{blocks:"minecraft:mangrove_planks"},{blocks:"minecraft:mangrove_leaves"},{blocks:"minecraft:spruce_trapdoor"},{blocks:"minecraft:oak_fence"},{blocks:"minecraft:mangrove_log"},{blocks:"minecraft:blue_stained_glass"},{blocks:"minecraft:purple_stained_glass"},{blocks:"minecraft:pink_stained_glass"},{blocks:"minecraft:orange_stained_glass"},{blocks:"minecraft:lime_stained_glass"},{blocks:"minecraft:white_stained_glass"},{blocks:"minecraft:yellow_stained_glass"},{blocks:"minecraft:red_stained_glass"},{blocks:"minecraft:light_blue_stained_glass"},{blocks:"minecraft:cyan_stained_glass"},{blocks:"minecraft:mangrove_slab"}],show_in_tooltip:0b},minecraft:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',minecraft:hide_additional_tooltip={}]
execute as @a[nbt={Inventory:[{id:"minecraft:shulker_spawn_egg"}]},nbt=!{SelectedItem:{id:"minecraft:shulker_spawn_egg"}}] run item replace entity @s hotbar.4 with minecraft:flower_banner_pattern[minecraft:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',minecraft:hide_additional_tooltip={}] 1

execute as @a[nbt={SelectedItem:{id:"minecraft:piglin_banner_pattern"}},scores={pieces=30..}] run item replace entity @s weapon.mainhand with minecraft:polar_bear_spawn_egg[minecraft:entity_data={DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Vision"],id:"minecraft:armor_stand"},minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"minecraft:crying_obsidian"},{blocks:"minecraft:obsidian"},{blocks:"minecraft:deepslate_coal_ore"},{blocks:"minecraft:dead_brain_coral_block"},{blocks:"minecraft:stone_bricks"},{blocks:"minecraft:mossy_stone_bricks"},{blocks:"minecraft:cracked_stone_bricks"},{blocks:"minecraft:dripstone_block"},{blocks:"minecraft:brown_concrete_powder"},{blocks:"minecraft:sandstone"},{blocks:"minecraft:packed_ice"},{blocks:"minecraft:bone_block"},{blocks:"minecraft:oak_planks"},{blocks:"minecraft:oak_slab"},{blocks:"minecraft:oak_stairs"},{blocks:"minecraft:stone_brick_wall"},{blocks:"minecraft:iron_bars"},{blocks:"minecraft:chain"},{blocks:"minecraft:soul_sand"},{blocks:"minecraft:brown_concrete"},{blocks:"minecraft:warped_stem"},{blocks:"minecraft:blue_terracotta"},{blocks:"minecraft:purple_concrete"},{blocks:"minecraft:amethyst_block"},{blocks:"minecraft:basalt"},{blocks:"minecraft:crimson_hyphae"},{blocks:"minecraft:purpur_block"},{blocks:"minecraft:diamond_block"},{blocks:"minecraft:spruce_planks"},{blocks:"minecraft:stone_brick_stairs"},{blocks:"minecraft:cherry_planks"},{blocks:"minecraft:stone_brick_slab"},{blocks:"minecraft:cherry_leaves"},{blocks:"minecraft:cherry_slab"},{blocks:"minecraft:cherry_fence"},{blocks:"minecraft:grass_block"},{blocks:"minecraft:cherry_log"},{blocks:"minecraft:spruce_slab"},{blocks:"minecraft:gray_stained_glass"},{blocks:"minecraft:moss_carpet"},{blocks:"minecraft:mangrove_roots"},{blocks:"minecraft:mangrove_planks"},{blocks:"minecraft:mangrove_leaves"},{blocks:"minecraft:spruce_trapdoor"},{blocks:"minecraft:oak_fence"},{blocks:"minecraft:mangrove_log"},{blocks:"minecraft:blue_stained_glass"},{blocks:"minecraft:purple_stained_glass"},{blocks:"minecraft:pink_stained_glass"},{blocks:"minecraft:orange_stained_glass"},{blocks:"minecraft:lime_stained_glass"},{blocks:"minecraft:white_stained_glass"},{blocks:"minecraft:yellow_stained_glass"},{blocks:"minecraft:red_stained_glass"},{blocks:"minecraft:light_blue_stained_glass"},{blocks:"minecraft:cyan_stained_glass"},{blocks:"minecraft:mangrove_slab"}],show_in_tooltip:0b},minecraft:custom_name='[{"text":"Condensateur Atomique","color":"light_purple","bold":true},{"text":"","color":"light_purple","bold":false}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}]
execute as @a[nbt={Inventory:[{id:"minecraft:polar_bear_spawn_egg"}]},nbt=!{SelectedItem:{id:"minecraft:polar_bear_spawn_egg"}}] run item replace entity @s hotbar.5 with minecraft:piglin_banner_pattern[minecraft:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',minecraft:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"30 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b}] 1


execute as @a[nbt={SelectedItem:{id:"minecraft:skull_banner_pattern"}},scores={pieces=10..}] run item replace entity @s weapon.mainhand with minecraft:skeleton_spawn_egg[minecraft:entity_data={Duration:1200,Radius:0,Tags:["MINE"],id:"minecraft:area_effect_cloud"},minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"minecraft:crying_obsidian"},{blocks:"minecraft:obsidian"},{blocks:"minecraft:deepslate_coal_ore"},{blocks:"minecraft:dead_brain_coral_block"},{blocks:"minecraft:stone_bricks"},{blocks:"minecraft:mossy_stone_bricks"},{blocks:"minecraft:cracked_stone_bricks"},{blocks:"minecraft:dripstone_block"},{blocks:"minecraft:brown_concrete_powder"},{blocks:"minecraft:sandstone"},{blocks:"minecraft:packed_ice"},{blocks:"minecraft:bone_block"},{blocks:"minecraft:oak_planks"},{blocks:"minecraft:oak_slab"},{blocks:"minecraft:oak_stairs"},{blocks:"minecraft:stone_brick_wall"},{blocks:"minecraft:iron_bars"},{blocks:"minecraft:chain"},{blocks:"minecraft:soul_sand"},{blocks:"minecraft:brown_concrete"},{blocks:"minecraft:warped_stem"},{blocks:"minecraft:blue_terracotta"},{blocks:"minecraft:purple_concrete"},{blocks:"minecraft:amethyst_block"},{blocks:"minecraft:basalt"},{blocks:"minecraft:crimson_hyphae"},{blocks:"minecraft:purpur_block"},{blocks:"minecraft:diamond_block"},{blocks:"minecraft:spruce_planks"},{blocks:"minecraft:stone_brick_stairs"},{blocks:"minecraft:cherry_planks"},{blocks:"minecraft:stone_brick_slab"},{blocks:"minecraft:cherry_leaves"},{blocks:"minecraft:cherry_slab"},{blocks:"minecraft:cherry_fence"},{blocks:"minecraft:grass_block"},{blocks:"minecraft:cherry_log"},{blocks:"minecraft:spruce_slab"},{blocks:"minecraft:gray_stained_glass"},{blocks:"minecraft:moss_carpet"},{blocks:"minecraft:mangrove_roots"},{blocks:"minecraft:mangrove_planks"},{blocks:"minecraft:mangrove_leaves"},{blocks:"minecraft:spruce_trapdoor"},{blocks:"minecraft:oak_fence"},{blocks:"minecraft:mangrove_log"},{blocks:"minecraft:blue_stained_glass"},{blocks:"minecraft:purple_stained_glass"},{blocks:"minecraft:pink_stained_glass"},{blocks:"minecraft:orange_stained_glass"},{blocks:"minecraft:lime_stained_glass"},{blocks:"minecraft:white_stained_glass"},{blocks:"minecraft:yellow_stained_glass"},{blocks:"minecraft:red_stained_glass"},{blocks:"minecraft:light_blue_stained_glass"},{blocks:"minecraft:cyan_stained_glass"},{blocks:"minecraft:mangrove_slab"}],show_in_tooltip:0b},minecraft:custom_name='[{"text":"MINE !!!","color":"red","bold":true},{"text":"","color":"red","bold":false}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}]
execute as @a[nbt={Inventory:[{id:"minecraft:skeleton_spawn_egg"}]},nbt=!{SelectedItem:{id:"minecraft:skeleton_spawn_egg"}}] run item replace entity @s hotbar.6 with minecraft:skull_banner_pattern[minecraft:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',minecraft:hide_additional_tooltip={}] 1

execute as @a[nbt={SelectedItem:{id:"minecraft:mojang_banner_pattern"}},scores={pieces=15..}] run item replace entity @s weapon.mainhand with minecraft:quartz[minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1
execute as @a[nbt={Inventory:[{id:"minecraft:quartz"}]},nbt=!{SelectedItem:{id:"minecraft:quartz"}}] run item replace entity @s hotbar.7 with minecraft:mojang_banner_pattern[minecraft:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',minecraft:hide_additional_tooltip={}] 1

#-----------------------------------------------------------------------------
#anti duplication
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.0 with air

execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.1 with air

execute as @a[nbt={Inventory:[{Slot:2b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.2 with air

execute as @a[nbt={Inventory:[{Slot:3b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.3 with air

execute as @a[nbt={Inventory:[{Slot:4b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.4 with air

execute as @a[nbt={Inventory:[{Slot:5b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.5 with air

execute as @a[nbt={Inventory:[{Slot:6b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"minecraft:quartz"}]}] run item replace entity @s hotbar.6 with air

execute as @a[nbt={Inventory:[{Slot:7b,id:"minecraft:enderman_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"minecraft:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"minecraft:honeycomb"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"minecraft:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"minecraft:shulker_spawn_egg"}]}] run item replace entity @s hotbar.7 with air

#-----------------------------------------------------------------------------