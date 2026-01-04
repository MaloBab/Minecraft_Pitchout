#gestion pieces
execute as @a[team=ingenieur] run title @s actionbar ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" Pièces détachées :","color":"gold"},{"text":" "},{"score":{"name":"@s","objective":"pieces"},"bold":true,"color":"aqua"}]
execute as @e[type=item,tag=!vide] run execute at @s run execute unless entity @a[team=ingenieur,distance=..2] run data modify entity @s PickupDelay set value -1
execute as @e[type=item,tag=!vide] run execute at @s run execute if entity @a[team=ingenieur,distance=..2] run data modify entity @s PickupDelay set value 0
clear @a pitchout:iron_nugget


execute store result score max pieces run execute if entity @e[type=item,nbt={Item:{id:"pitchout:iron_nugget"}}]
execute if score max pieces matches 100.. run kill @e[type=pitchout:item,nbt={Item:{id:"pitchout:iron_nugget"}},limit=1,sort=arbitrary]

#-----------------------------------------------------------------------------------------
#apparition pieces

execute if entity @a[team=ingenieur] run scoreboard players add timer pieces 1

execute if score select map matches 1 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 6.55 12.44 10 50 false @e[type=item,distance=..2]
execute if score select map matches 2 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 587 96 5 50 false @e[type=item,distance=..2]
execute if score select map matches 3 run execute if score timer pieces matches 7.. run execute positioned 294 42 97 run execute if entity @e[type=item,limit=15,distance=..2] run spreadplayers 1572 108 5 60 false @e[type=item,distance=..2]

execute if score timer pieces matches 8.. run summon item 294 42 97 {Item:{id:"pitchout:iron_nugget",count:1b}}
execute if score timer pieces matches 8.. run scoreboard players set timer pieces 0

execute if entity @a[team=ingenieur] run scoreboard players add timePlan pieces 1
execute if score timePlan pieces matches 307.. run scoreboard players set timePlan pieces 0
#----------------------------------------------------------------------------------------
#gestion plans

execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:creeper_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:globe_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:flower_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:piglin_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:skull_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force
execute at @e[type=pitchout:item,nbt={Item:{id:"pitchout:mojang_banner_pattern"}}] run particle pitchout:wax_on ~ ~ ~ 0.1 0.1 0.1 0.5 1 force

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
execute store result score nbBullet balise run execute if entity @e[type=pitchout:armor_stand,tag=Bullet]


execute as @a[scores={TourelleP=1..},tag=!safeT] run tag @s add safeT
execute at @e[tag=Tourelle] run particle pitchout:crit ~ ~0.5 ~ 0.2 0.2 0.2 0.5 1 force

execute as @e[type=pitchout:armor_stand,tag=Tourelle] run scoreboard players add @s lifeTourelle 1
execute as @a[tag=safeT] run scoreboard players add @s lifeTourelle 1

execute at @e[type=pitchout:armor_stand,tag=Tourelle,scores={lifeTourelle=..419}] run setblock ~ ~ ~ pitchout:note_block keep
execute at @e[type=pitchout:armor_stand,tag=Tourelle,scores={lifeTourelle=..419}] run setblock ~ ~1 ~ pitchout:black_stained_glass_pane keep


execute as @a[scores={PoseTourelle=1..}] run scoreboard players remove @s pieces 50
execute as @a[scores={PoseTourelle=1..}] run item replace entity @s hotbar.2 with pitchout:creeper_banner_pattern[pitchout:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @a[scores={PoseTourelle=1..}] run scoreboard players set @s PoseTourelle 0

execute at @e[type=pitchout:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:note_block
execute at @e[type=pitchout:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run fill ~ ~1 ~ ~ ~1 ~ air replace pitchout:black_stained_glass_pane
execute as @e[type=pitchout:armor_stand,tag=Tourelle,scores={lifeTourelle=419..}] run kill @s

execute as @a[scores={TourelleP=1..,lifeTourelle=420..}] run scoreboard players set @s TourelleP 0
execute as @a[scores={lifeTourelle=420..}] run tag @s remove safeT
execute as @a[scores={lifeTourelle=420..}] run scoreboard players set @s lifeTourelle 0



execute as @e[tag=Tourelle,type=pitchout:armor_stand] run execute at @s run tp @s ~ ~ ~ facing entity @e[tag=!safeT,distance=..25,limit=1,sort=nearest,type=!pitchout:armor_stand,type=!pitchout:item,type=!arrow,type=!item_frame,type=!area_effect_cloud,type=!glow_item_frame]
execute as @e[type=pitchout:armor_stand,tag=Tourelle] run execute at @s if entity @e[tag=!safeT,distance=..20,limit=1,sort=nearest,type=!pitchout:armor_stand,type=!pitchout:item,type=!arrow,type=!item_frame,type=!area_effect_cloud] run scoreboard players add @s TimeTourelle 1
execute as @e[type=pitchout:armor_stand,tag=Tourelle] run execute at @s run tp @e[tag=Bullet,distance=..1] @s
scoreboard players add @e[name="Bullet"] lifeBullet 1
kill @e[tag=Bullet,scores={lifeBullet=50..}]
execute at @e[tag=Bullet] run tp @e[distance=..1,limit=1,tag=Bullet] ^ ^ ^3
execute at @e[tag=Bullet] if entity @e[tag=!safeT,distance=..2,limit=1,sort=nearest,type=!pitchout:armor_stand,type=!pitchout:item,type=!arrow,type=!area_effect_cloud,type=!glow_item_frame,type=!item_frame,type=!area_effect_cloud] run summon pitchout:creeper ~ ~1 ~ {NoAI:1b,Silent:1b,ExplosionRadius:4,Invulnerable:1b,Fuse:0,ignited:1b}
execute if score nbBullet balise >= 16 balise run kill @e[type=pitchout:armor_stand,tag=Bullet,limit=1]
execute unless entity @e[type=pitchout:armor_stand,tag=Tourelle] run kill @e[type=pitchout:armor_stand,tag=Bullet]

execute as @e[type=pitchout:armor_stand,tag=Tourelle] run execute at @s run execute if entity @e[tag=!safeT,distance=..20,limit=1,sort=nearest,type=!pitchout:armor_stand,type=!pitchout:item,type=!arrow,type=!item_frame,type=!area_effect_cloud,type=!area_effect_cloud,type=!glow_item_frame] if score @s TimeTourelle matches 10.. run summon armor_stand ~ ~ ~ {Invisible:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone_button",Count:1b}],HandItems:[{},{}],Tags:["Bullet"]}
execute as @e[type=pitchout:armor_stand,tag=Tourelle,scores={TimeTourelle=10..}] run scoreboard players set @s TimeTourelle 0

#----------------------------------------------------------------------------
#flaque d'huile
execute positioned 291 41 97 run execute as @a[scores={huile=1..}] run execute store result score @s piegehuile run execute if entity @e[type=pitchout:glow_item_frame,tag=Huile,distance=..2]

execute at @e[type=pitchout:glow_item_frame,tag=Huile] run particle pitchout:dripping_honey ~ ~ ~ 1 0.01 1 1 3 force
execute as @a[scores={huile=1..}] run execute unless entity @s[scores={piegehuile=15..}] run summon pitchout:glow_item_frame 291 41 97 {Tags:["Huile"]}
execute as @a[scores={piegehuile=1}] run scoreboard players remove @s pieces 40
execute as @a[scores={piegehuile=1}] run item replace entity @s hotbar.3 with pitchout:globe_banner_pattern[pitchout:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @e[type=pitchout:glow_item_frame,tag=Huile] run data merge entity @s {Invulnerable:1b,Invisible:1b,Item:{id:"pitchout:yellow_stained_glass_pane",Count:1b},OnGround:0b,Facing:1b}

execute if score select map matches 1 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 6.55 12.44 10 50 false @e[type=pitchout:glow_item_frame,tag=Huile]
execute if score select map matches 2 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 587 96 8 50 false @e[type=pitchout:glow_item_frame,tag=Huile]
execute if score select map matches 3 run execute as @a[scores={huile=1..,piegehuile=10..}] run execute at @s run spreadplayers 1572 108 5 60 false @e[type=pitchout:glow_item_frame,tag=Huile]

execute as @a[scores={huile=1..,piegehuile=10..}] run scoreboard players set @s huile 0
execute as @a[scores={piegehuile=10..}] run scoreboard players set @s piegehuile 0

execute at @e[type=pitchout:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run tag @s add flot
execute as @a[tag=flot] run attribute @s generic.gravity base set 0
execute as @a[tag=flot] run scoreboard players add @s flotHuile 1
execute as @a[tag=flot,scores={flotHuile=80..}] run attribute @s generic.gravity base set 0.08
execute as @a[tag=flot,scores={flotHuile=80..}] run tag @s remove flot
execute as @a[scores={flotHuile=80..}] run scoreboard players set @s flotHuile 0
execute at @e[type=pitchout:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run effect give @s pitchout:nausea 10 2 true
execute at @e[type=pitchout:glow_item_frame,tag=Huile] run execute as @a[gamemode=!spectator,distance=..2.6] run execute at @s run kill @e[type=pitchout:glow_item_frame,tag=Huile,distance=..2.6,limit=1]

#----------------------------------------------------------------------------
#repulseur
execute as @a[scores={Repulseur=1..}] if entity @e[tag=Repul,scores={lifeTourelle=1}] run scoreboard players remove @s pieces 35
execute at @e[tag=Repul] run particle pitchout:shriek{delay:2} ~ ~1.3 ~ 0.2 1.3 0.2 0.2 2 force
execute at @e[tag=Repul] run particle pitchout:block{block_state:{Name:stone}} ~ ~ ~ 3 0.2 3 0.3 10 force
execute as @a[scores={Repulseur=1..}] if entity @e[tag=Repul,scores={lifeTourelle=1}] run item replace entity @s hotbar.4 with pitchout:flower_banner_pattern[pitchout:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute at @e[tag=Repul] run execute as @a[distance=..8,scores={Repulseur=0}] run execute at @s run tp @s ^ ^0.5 ^-1.5 facing entity @e[tag=Repul,sort=nearest,limit=1]

execute at @e[tag=Repul] run setblock ~ ~ ~ pitchout:piston[facing=up] replace
execute at @e[tag=Repul] run setblock ~ ~1 ~ pitchout:sculk_sensor replace

execute as @e[tag=Repul] run scoreboard players add @s lifeTourelle 1
execute at @e[tag=Repul,scores={lifeTourelle=300..}] run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:5,Tags:["RFin"]}
execute if entity @e[tag=Repul,scores={lifeTourelle=300..}] run execute as @a[scores={Repulseur=1..},limit=1,sort=arbitrary] run scoreboard players set @s Repulseur 0
execute as @e[tag=Repul,scores={lifeTourelle=300..}] run kill @s

execute at @e[tag=RFin] run fill ~ ~ ~ ~ ~1 ~ air replace pitchout:piston
execute at @e[tag=RFin] run fill ~ ~ ~ ~ ~1 ~ air replace pitchout:sculk_sensor

#------------------------------------------------------------------------------
#vision
execute at @e[type=pitchout:armor_stand,tag=Vision] run setblock ~ ~ ~ pitchout:copper_block keep
execute at @e[type=pitchout:armor_stand,tag=Vision] run setblock ~ ~1 ~ pitchout:end_rod keep
execute at @e[type=pitchout:armor_stand,tag=Vision] run particle pitchout:flash ~ ~0.6 ~ 1.5 0.8 1.5 2 1 force

execute as @e[type=pitchout:armor_stand,tag=Vision,scores={timeVision=1}] run execute as @a[scores={Vision=1..}] run scoreboard players remove @s pieces 25
execute as @e[type=pitchout:armor_stand,tag=Vision,scores={timeVision=1}] run execute as @a[scores={Vision=1..}] run item replace entity @s hotbar.5 with piglin_banner_pattern[pitchout:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',pitchout:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"25 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b}] 1


execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run attribute @s[distance=..15] generic.scale base set 0.1
execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run attribute @s[distance=15..] generic.scale base set 1
execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=1..}] run effect give @s[distance=..15] speed 1 5 true
execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=0}] run attribute @s[distance=..15] generic.scale base set 2.5
execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=0}] run attribute @s[distance=15..] generic.scale base set 1
execute at @e[type=pitchout:armor_stand,tag=Vision] as @a[scores={Vision=0}] run effect give @s[distance=..15] slowness 1 2 true

execute as @e[type=pitchout:armor_stand,tag=Vision] run scoreboard players add @s timeVision 1
execute at @e[type=pitchout:armor_stand,scores={timeVision=300..}] as @a[distance=..15] run attribute @s generic.scale base set 1
execute as @e[type=pitchout:armor_stand,tag=Vision,scores={timeVision=300..}] run execute as @a[scores={Vision=1..}] run scoreboard players set @s Vision 0
execute at @e[type=pitchout:armor_stand,scores={timeVision=300..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:copper_block
execute at @e[type=pitchout:armor_stand,scores={timeVision=300..}] run fill ~ ~1 ~ ~ ~1 ~ air replace pitchout:end_rod
execute as @e[type=pitchout:armor_stand,scores={timeVision=300..}] run kill @s

#-----------------------------------------------------------------------------
#mine
execute at @e[tag=MINE,type=pitchout:area_effect_cloud] run particle pitchout:block{block_state:{Name:tnt}} ~ ~ ~ 0 0.1 0 10 1 force

execute as @a[scores={mine=1..}] run scoreboard players remove @s pieces 10
execute as @a[scores={mine=1..}] run item replace entity @s hotbar.6 with pitchout:skull_banner_pattern[pitchout:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={mine=1..}] run scoreboard players set @s mine 0

execute at @a[gamemode=!spectator] run execute as @e[type=pitchout:area_effect_cloud,distance=..2,tag=MINE] run tag @s add use
execute at @a[gamemode=!spectator] run execute if entity @e[type=pitchout:area_effect_cloud,distance=..2,tag=MINE,tag=use] run summon pitchout:creeper ~ ~0.2 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:6,Fuse:0,ignited:1b}
execute at @a[gamemode=!spectator] run execute if entity @e[type=pitchout:area_effect_cloud,distance=..2,tag=MINE,tag=use] run summon pitchout:creeper ~ ~0.2 ~ {Silent:1b,Invulnerable:1b,ExplosionRadius:6,Fuse:0,ignited:1b}
execute as @e[type=pitchout:area_effect_cloud,tag=MINE,tag=use] run kill @s

#--------------------------------------------------------------------------------
#aimant
execute as @a[scores={aimant=1..}] run scoreboard players add @s aimant 1

execute as @a[scores={aimant=1..2}] run tag @s add aimant
execute at @a[tag=aimant] run execute as @e[type=item,distance=..8] run execute at @s run tp @s ^ ^0.1 ^0.25 facing entity @a[tag=aimant,limit=1,sort=nearest]
execute as @a[scores={aimant=2}] run scoreboard players remove @s pieces 15
execute as @a[scores={aimant=2}] run item replace entity @s hotbar.7 with pitchout:mojang_banner_pattern[pitchout:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={aimant=400..},tag=aimant] run tag @s remove aimant
execute as @a[scores={aimant=400..}] run scoreboard players set @s aimant 0

#--------------------------------------------------------------------------------
#placement des plans dans l'inventaire
execute as @a[scores={nbPlan1=1..}] run clear @s pitchout:creeper_banner_pattern
execute as @a[scores={nbPlan1=1..}] run item replace entity @s hotbar.2 with pitchout:creeper_banner_pattern[pitchout:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @a[scores={nbPlan1=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan1=1..}] run scoreboard players set @s nbPlan1 0

execute as @a[scores={nbPlan2=1..}] run clear @s pitchout:globe_banner_pattern
execute as @a[scores={nbPlan2=1..}] run item replace entity @s hotbar.3 with pitchout:globe_banner_pattern[pitchout:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @a[scores={nbPlan2=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan2=1..}] run scoreboard players set @s nbPlan2 0

execute as @a[scores={nbPlan3=1..}] run clear @s pitchout:flower_banner_pattern
execute as @a[scores={nbPlan3=1..}] run item replace entity @s hotbar.4 with pitchout:flower_banner_pattern[pitchout:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan3=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan3=1..}] run scoreboard players set @s nbPlan3 0

execute as @a[scores={nbPlan4=1..}] run clear @s pitchout:piglin_banner_pattern
execute as @a[scores={nbPlan4=1..}] run item replace entity @s hotbar.5 with pitchout:piglin_banner_pattern[pitchout:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',pitchout:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"30 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b}] 1
execute as @a[scores={nbPlan4=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan4=1..}] run scoreboard players set @s nbPlan4 0

execute as @a[scores={nbPlan5=1..}] run clear @s pitchout:skull_banner_pattern
execute as @a[scores={nbPlan5=1..}] run item replace entity @s hotbar.6 with pitchout:skull_banner_pattern[pitchout:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan5=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan5=1..}] run scoreboard players set @s nbPlan5 0

execute as @a[scores={nbPlan6=1..}] run clear @s pitchout:mojang_banner_pattern
execute as @a[scores={nbPlan6=1..}] run item replace entity @s hotbar.7 with pitchout:mojang_banner_pattern[pitchout:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={nbPlan6=1..}] run scoreboard players add @s pieces 10
execute as @a[scores={nbPlan6=1..}] run scoreboard players set @s nbPlan6 0
#-----------------------------------------------------------------------------
#transformation plan --> item
execute as @a[nbt={SelectedItem:{id:"pitchout:creeper_banner_pattern"}},scores={pieces=50..}] run item replace entity @s weapon.mainhand with pitchout:enderman_spawn_egg[pitchout:entity_data={ArmorItems:[{},{},{},{count:1,id:"pitchout:dispenser"}],DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Tourelle"],id:"pitchout:armor_stand"},pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"pitchout:crying_obsidian"},{blocks:"pitchout:obsidian"},{blocks:"pitchout:deepslate_coal_ore"},{blocks:"pitchout:dead_brain_coral_block"},{blocks:"pitchout:stone_bricks"},{blocks:"pitchout:mossy_stone_bricks"},{blocks:"pitchout:cracked_stone_bricks"},{blocks:"pitchout:dripstone_block"},{blocks:"pitchout:brown_concrete_powder"},{blocks:"pitchout:sandstone"},{blocks:"pitchout:packed_ice"},{blocks:"pitchout:bone_block"},{blocks:"pitchout:oak_planks"},{blocks:"pitchout:oak_slab"},{blocks:"pitchout:oak_stairs"},{blocks:"pitchout:stone_brick_wall"},{blocks:"pitchout:iron_bars"},{blocks:"pitchout:chain"},{blocks:"pitchout:soul_sand"},{blocks:"pitchout:brown_concrete"},{blocks:"pitchout:warped_stem"},{blocks:"pitchout:blue_terracotta"},{blocks:"pitchout:purple_concrete"},{blocks:"pitchout:amethyst_block"},{blocks:"pitchout:basalt"},{blocks:"pitchout:crimson_hyphae"},{blocks:"pitchout:purpur_block"},{blocks:"pitchout:diamond_block"},{blocks:"pitchout:spruce_planks"},{blocks:"pitchout:stone_brick_stairs"},{blocks:"pitchout:cherry_planks"},{blocks:"pitchout:stone_brick_slab"},{blocks:"pitchout:cherry_leaves"},{blocks:"pitchout:cherry_slab"},{blocks:"pitchout:cherry_fence"},{blocks:"pitchout:grass_block"},{blocks:"pitchout:cherry_log"},{blocks:"pitchout:spruce_slab"},{blocks:"pitchout:gray_stained_glass"},{blocks:"pitchout:moss_carpet"},{blocks:"pitchout:mangrove_roots"},{blocks:"pitchout:mangrove_planks"},{blocks:"pitchout:mangrove_leaves"},{blocks:"pitchout:spruce_trapdoor"},{blocks:"pitchout:oak_fence"},{blocks:"pitchout:mangrove_log"},{blocks:"pitchout:blue_stained_glass"},{blocks:"pitchout:purple_stained_glass"},{blocks:"pitchout:pink_stained_glass"},{blocks:"pitchout:orange_stained_glass"},{blocks:"pitchout:lime_stained_glass"},{blocks:"pitchout:white_stained_glass"},{blocks:"pitchout:yellow_stained_glass"},{blocks:"pitchout:red_stained_glass"},{blocks:"pitchout:light_blue_stained_glass"},{blocks:"pitchout:cyan_stained_glass"},{blocks:"pitchout:mangrove_slab"}],show_in_tooltip:0b},pitchout:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @a[nbt={Inventory:[{id:"pitchout:enderman_spawn_egg"}]},nbt=!{SelectedItem:{id:"pitchout:enderman_spawn_egg"}}] run item replace entity @s hotbar.2 with pitchout:creeper_banner_pattern[pitchout:lore=['[{"text":"Cette ","color":"dark_purple"},{"text":"tourelle","color":"dark_red","bold":true},{"text":" enverra sur vos ennemis","color":"dark_purple","bold":false}]','[{"text":"des balles explosives pendant ","color":"dark_purple"},{"text":"20 secondes","color":"green"}]','[{"text":"(","color":"dark_purple"},{"text":"50 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Tourelle Automatique","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',pitchout:hide_additional_tooltip={}]

execute as @a[nbt={SelectedItem:{id:"pitchout:globe_banner_pattern"}},scores={pieces=40..}] run item replace entity @s weapon.mainhand with pitchout:honeycomb[pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[nbt={Inventory:[{id:"pitchout:honeycomb"}]},nbt=!{SelectedItem:{id:"pitchout:honeycomb"}}] run item replace entity @s hotbar.3 with pitchout:globe_banner_pattern[pitchout:lore=['[{"text":"Après une erreur technique une"},{"text":" fuite d\'huile","bold":true,"color":"yellow"},{"text":"a eu lieu","bold":false,"color":"yellow"}]','[{"text":"créant ","color":"yellow"},{"text":"des flaques d\'huile un peu partout et faisant","color":"gold"}]','[{"text":"glisser ","color":"gold"},{"text":"quiconque","color":"aqua","bold":true},{"text":" s\'en approche","color":"aqua","bold":false}]','[{"text":"(","color":"dark_purple"},{"text":"40 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Fuite D\'Huile","color":"yellow","bold":true},{"text":"","color":"yellow","bold":false}]',pitchout:hide_additional_tooltip={}]

execute as @a[nbt={SelectedItem:{id:"pitchout:flower_banner_pattern"}},scores={pieces=35..}] run item replace entity @s weapon.mainhand with pitchout:shulker_spawn_egg[pitchout:entity_data={Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Repul"],id:"pitchout:armor_stand"},pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"pitchout:crying_obsidian"},{blocks:"pitchout:obsidian"},{blocks:"pitchout:deepslate_coal_ore"},{blocks:"pitchout:dead_brain_coral_block"},{blocks:"pitchout:stone_bricks"},{blocks:"pitchout:mossy_stone_bricks"},{blocks:"pitchout:cracked_stone_bricks"},{blocks:"pitchout:dripstone_block"},{blocks:"pitchout:brown_concrete_powder"},{blocks:"pitchout:sandstone"},{blocks:"pitchout:packed_ice"},{blocks:"pitchout:bone_block"},{blocks:"pitchout:oak_planks"},{blocks:"pitchout:oak_slab"},{blocks:"pitchout:oak_stairs"},{blocks:"pitchout:stone_brick_wall"},{blocks:"pitchout:iron_bars"},{blocks:"pitchout:chain"},{blocks:"pitchout:soul_sand"},{blocks:"pitchout:brown_concrete"},{blocks:"pitchout:warped_stem"},{blocks:"pitchout:blue_terracotta"},{blocks:"pitchout:purple_concrete"},{blocks:"pitchout:amethyst_block"},{blocks:"pitchout:basalt"},{blocks:"pitchout:crimson_hyphae"},{blocks:"pitchout:purpur_block"},{blocks:"pitchout:diamond_block"},{blocks:"pitchout:spruce_planks"},{blocks:"pitchout:stone_brick_stairs"},{blocks:"pitchout:cherry_planks"},{blocks:"pitchout:stone_brick_slab"},{blocks:"pitchout:cherry_leaves"},{blocks:"pitchout:cherry_slab"},{blocks:"pitchout:cherry_fence"},{blocks:"pitchout:grass_block"},{blocks:"pitchout:cherry_log"},{blocks:"pitchout:spruce_slab"},{blocks:"pitchout:gray_stained_glass"},{blocks:"pitchout:moss_carpet"},{blocks:"pitchout:mangrove_roots"},{blocks:"pitchout:mangrove_planks"},{blocks:"pitchout:mangrove_leaves"},{blocks:"pitchout:spruce_trapdoor"},{blocks:"pitchout:oak_fence"},{blocks:"pitchout:mangrove_log"},{blocks:"pitchout:blue_stained_glass"},{blocks:"pitchout:purple_stained_glass"},{blocks:"pitchout:pink_stained_glass"},{blocks:"pitchout:orange_stained_glass"},{blocks:"pitchout:lime_stained_glass"},{blocks:"pitchout:white_stained_glass"},{blocks:"pitchout:yellow_stained_glass"},{blocks:"pitchout:red_stained_glass"},{blocks:"pitchout:light_blue_stained_glass"},{blocks:"pitchout:cyan_stained_glass"},{blocks:"pitchout:mangrove_slab"}],show_in_tooltip:0b},pitchout:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',pitchout:hide_additional_tooltip={}]
execute as @a[nbt={Inventory:[{id:"pitchout:shulker_spawn_egg"}]},nbt=!{SelectedItem:{id:"pitchout:shulker_spawn_egg"}}] run item replace entity @s hotbar.4 with pitchout:flower_banner_pattern[pitchout:lore=['[{"text":"Vous construisez ","color":"dark_purple"},{"text":"un Répulseur","color":"dark_aqua","bold":true},{"text":" générant","bold":false}]','[{"text":"un tremblement de terre","color":"#660000"},{"text":" repoussant","color":"dark_purple"}]','[{"text":"les adversaires","color":"aqua"},{"text":" qui s\'en approchent","color":"dark_purple"}]','[{"text":"(","color":"dark_purple"},{"text":"35 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Répulseur","color":"dark_aqua","bold":true},{"text":"","color":"dark_aqua","bold":false}]',pitchout:hide_additional_tooltip={}] 1

execute as @a[nbt={SelectedItem:{id:"pitchout:piglin_banner_pattern"}},scores={pieces=30..}] run item replace entity @s weapon.mainhand with pitchout:polar_bear_spawn_egg[pitchout:entity_data={DisabledSlots:4144959,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Tags:["Vision"],id:"pitchout:armor_stand"},pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"pitchout:crying_obsidian"},{blocks:"pitchout:obsidian"},{blocks:"pitchout:deepslate_coal_ore"},{blocks:"pitchout:dead_brain_coral_block"},{blocks:"pitchout:stone_bricks"},{blocks:"pitchout:mossy_stone_bricks"},{blocks:"pitchout:cracked_stone_bricks"},{blocks:"pitchout:dripstone_block"},{blocks:"pitchout:brown_concrete_powder"},{blocks:"pitchout:sandstone"},{blocks:"pitchout:packed_ice"},{blocks:"pitchout:bone_block"},{blocks:"pitchout:oak_planks"},{blocks:"pitchout:oak_slab"},{blocks:"pitchout:oak_stairs"},{blocks:"pitchout:stone_brick_wall"},{blocks:"pitchout:iron_bars"},{blocks:"pitchout:chain"},{blocks:"pitchout:soul_sand"},{blocks:"pitchout:brown_concrete"},{blocks:"pitchout:warped_stem"},{blocks:"pitchout:blue_terracotta"},{blocks:"pitchout:purple_concrete"},{blocks:"pitchout:amethyst_block"},{blocks:"pitchout:basalt"},{blocks:"pitchout:crimson_hyphae"},{blocks:"pitchout:purpur_block"},{blocks:"pitchout:diamond_block"},{blocks:"pitchout:spruce_planks"},{blocks:"pitchout:stone_brick_stairs"},{blocks:"pitchout:cherry_planks"},{blocks:"pitchout:stone_brick_slab"},{blocks:"pitchout:cherry_leaves"},{blocks:"pitchout:cherry_slab"},{blocks:"pitchout:cherry_fence"},{blocks:"pitchout:grass_block"},{blocks:"pitchout:cherry_log"},{blocks:"pitchout:spruce_slab"},{blocks:"pitchout:gray_stained_glass"},{blocks:"pitchout:moss_carpet"},{blocks:"pitchout:mangrove_roots"},{blocks:"pitchout:mangrove_planks"},{blocks:"pitchout:mangrove_leaves"},{blocks:"pitchout:spruce_trapdoor"},{blocks:"pitchout:oak_fence"},{blocks:"pitchout:mangrove_log"},{blocks:"pitchout:blue_stained_glass"},{blocks:"pitchout:purple_stained_glass"},{blocks:"pitchout:pink_stained_glass"},{blocks:"pitchout:orange_stained_glass"},{blocks:"pitchout:lime_stained_glass"},{blocks:"pitchout:white_stained_glass"},{blocks:"pitchout:yellow_stained_glass"},{blocks:"pitchout:red_stained_glass"},{blocks:"pitchout:light_blue_stained_glass"},{blocks:"pitchout:cyan_stained_glass"},{blocks:"pitchout:mangrove_slab"}],show_in_tooltip:0b},pitchout:custom_name='[{"text":"Condensateur Atomique","color":"light_purple","bold":true},{"text":"","color":"light_purple","bold":false}]',pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:10511680,show_in_tooltip:0b}]
execute as @a[nbt={Inventory:[{id:"pitchout:polar_bear_spawn_egg"}]},nbt=!{SelectedItem:{id:"pitchout:polar_bear_spawn_egg"}}] run item replace entity @s hotbar.5 with pitchout:piglin_banner_pattern[pitchout:item_name='[{"text":"Condensateur Atomique","bold":true,"color":"light_purple"}]',pitchout:lore=['[{"text":"Vous construisez un "},{"text":"Condensateur Atomique","bold":true,"color":"light_purple"},{"text":"."}]','[{"text":"Lorsque vous vous trouvez dans son rayon d\'action","color":"aqua"},{"text":","}]','[{"text":"votre taille est grandement réduite et votre vitesse augmentée","color":"green"},{"text":"."}]','[{"text":"Lorsqu\'un adversaire s\'en approche","color":"aqua"},{"text":", "}]','[{"text":"sa taille augmente et sa vitesse diminue","color":"dark_red"},{"text":"."}]','[{"text":"("},{"text":"30 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b}] 1


execute as @a[nbt={SelectedItem:{id:"pitchout:skull_banner_pattern"}},scores={pieces=10..}] run item replace entity @s weapon.mainhand with pitchout:skeleton_spawn_egg[pitchout:entity_data={Duration:1200,Radius:0,Tags:["MINE"],id:"pitchout:area_effect_cloud"},pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:can_place_on={predicates:[{blocks:"deepslate_tiles"},{blocks:"smooth_basalt"},{blocks:"white_wool"},{blocks:"stripped_spruce_wood"},{blocks:"jungle_planks"},{blocks:"mangrove_leaves"},{blocks:"crafter"},{blocks:"crafting_table"},{blocks:"podzol"},{blocks:"grass_block"},{blocks:"coarse_dirt"},{blocks:"mangrove_wood"},{blocks:"waxed_exposed_copper_grate"},{blocks:"copper_grate"},{blocks:"polished_basalt"},{blocks:"beehive"},{blocks:"bee_nest"},{blocks:"dark_oak_leaves"},{blocks:"mangrove_planks"},{blocks:"pitchout:crying_obsidian"},{blocks:"pitchout:obsidian"},{blocks:"pitchout:deepslate_coal_ore"},{blocks:"pitchout:dead_brain_coral_block"},{blocks:"pitchout:stone_bricks"},{blocks:"pitchout:mossy_stone_bricks"},{blocks:"pitchout:cracked_stone_bricks"},{blocks:"pitchout:dripstone_block"},{blocks:"pitchout:brown_concrete_powder"},{blocks:"pitchout:sandstone"},{blocks:"pitchout:packed_ice"},{blocks:"pitchout:bone_block"},{blocks:"pitchout:oak_planks"},{blocks:"pitchout:oak_slab"},{blocks:"pitchout:oak_stairs"},{blocks:"pitchout:stone_brick_wall"},{blocks:"pitchout:iron_bars"},{blocks:"pitchout:chain"},{blocks:"pitchout:soul_sand"},{blocks:"pitchout:brown_concrete"},{blocks:"pitchout:warped_stem"},{blocks:"pitchout:blue_terracotta"},{blocks:"pitchout:purple_concrete"},{blocks:"pitchout:amethyst_block"},{blocks:"pitchout:basalt"},{blocks:"pitchout:crimson_hyphae"},{blocks:"pitchout:purpur_block"},{blocks:"pitchout:diamond_block"},{blocks:"pitchout:spruce_planks"},{blocks:"pitchout:stone_brick_stairs"},{blocks:"pitchout:cherry_planks"},{blocks:"pitchout:stone_brick_slab"},{blocks:"pitchout:cherry_leaves"},{blocks:"pitchout:cherry_slab"},{blocks:"pitchout:cherry_fence"},{blocks:"pitchout:grass_block"},{blocks:"pitchout:cherry_log"},{blocks:"pitchout:spruce_slab"},{blocks:"pitchout:gray_stained_glass"},{blocks:"pitchout:moss_carpet"},{blocks:"pitchout:mangrove_roots"},{blocks:"pitchout:mangrove_planks"},{blocks:"pitchout:mangrove_leaves"},{blocks:"pitchout:spruce_trapdoor"},{blocks:"pitchout:oak_fence"},{blocks:"pitchout:mangrove_log"},{blocks:"pitchout:blue_stained_glass"},{blocks:"pitchout:purple_stained_glass"},{blocks:"pitchout:pink_stained_glass"},{blocks:"pitchout:orange_stained_glass"},{blocks:"pitchout:lime_stained_glass"},{blocks:"pitchout:white_stained_glass"},{blocks:"pitchout:yellow_stained_glass"},{blocks:"pitchout:red_stained_glass"},{blocks:"pitchout:light_blue_stained_glass"},{blocks:"pitchout:cyan_stained_glass"},{blocks:"pitchout:mangrove_slab"}],show_in_tooltip:0b},pitchout:custom_name='[{"text":"MINE !!!","color":"red","bold":true},{"text":"","color":"red","bold":false}]',pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:10511680,show_in_tooltip:0b}]
execute as @a[nbt={Inventory:[{id:"pitchout:skeleton_spawn_egg"}]},nbt=!{SelectedItem:{id:"pitchout:skeleton_spawn_egg"}}] run item replace entity @s hotbar.6 with pitchout:skull_banner_pattern[pitchout:lore=['[{"text":"Vous posez une","color":"dark_purple"},{"text":" MINE !","color":"red","bold":true},{"text":" Celle-ci explose si ","bold":false},{"text":"quelqu\'un","bold":false,"color":"aqua"}]','[{"text":"s\'en approche de trop près, ","color":"dark_purple"},{"text":"propulsant le joueur en l\'air ","color":"blue"}]','[{"text":"(","color":"dark_purple"},{"text":"10 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"MINE !","color":"red","bold":true},{"text":"","color":"red","bold":false}]',pitchout:hide_additional_tooltip={}] 1

execute as @a[nbt={SelectedItem:{id:"pitchout:mojang_banner_pattern"}},scores={pieces=15..}] run item replace entity @s weapon.mainhand with pitchout:quartz[pitchout:attribute_modifiers={modifiers:[],show_in_tooltip:0b},pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1
execute as @a[nbt={Inventory:[{id:"pitchout:quartz"}]},nbt=!{SelectedItem:{id:"pitchout:quartz"}}] run item replace entity @s hotbar.7 with pitchout:mojang_banner_pattern[pitchout:lore=['[{"text":"Vous vous équipez d\'un ","color":"dark_purple"},{"text":"Aimant à Items","color":"gray","bold":true},{"text":" attirant","color":"dark_purple","bold":false}]','[{"text":"toutes les","color":"dark_purple"},{"text":" pièces détachées","color":"red"},{"text":" et "},{"text":"les plans","bold":true,"color":"dark_green"},{"text":" dans","bold":false,"color":"dark_purple"}]','[{"text":"un rayons de ","color":"dark_purple"},{"text":"8 blocs autour de vous ","color":"light_purple"},{"text":"(dure 20 secondes)","color":"dark_aqua"}]','[{"text":"(","color":"dark_purple"},{"text":"15 pièces détachées","color":"red"},{"text":" pour invoquer)"}]'],pitchout:enchantments={levels:{"pitchout:aqua_affinity":1},show_in_tooltip:0b},pitchout:custom_name='[{"text":"Aimant à Items","color":"gray","bold":true},{"text":"","color":"gray","bold":false}]',pitchout:hide_additional_tooltip={}] 1

#-----------------------------------------------------------------------------
#anti duplication
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.0 with air
execute as @a[nbt={Inventory:[{Slot:0b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.0 with air

execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.1 with air
execute as @a[nbt={Inventory:[{Slot:1b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.1 with air

execute as @a[nbt={Inventory:[{Slot:2b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.2 with air
execute as @a[nbt={Inventory:[{Slot:2b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.2 with air

execute as @a[nbt={Inventory:[{Slot:3b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.3 with air
execute as @a[nbt={Inventory:[{Slot:3b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.3 with air

execute as @a[nbt={Inventory:[{Slot:4b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.4 with air
execute as @a[nbt={Inventory:[{Slot:4b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.4 with air

execute as @a[nbt={Inventory:[{Slot:5b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.5 with air
execute as @a[nbt={Inventory:[{Slot:5b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.5 with air

execute as @a[nbt={Inventory:[{Slot:6b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.6 with air
execute as @a[nbt={Inventory:[{Slot:6b,id:"pitchout:quartz"}]}] run item replace entity @s hotbar.6 with air

execute as @a[nbt={Inventory:[{Slot:7b,id:"pitchout:enderman_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"pitchout:polar_bear_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"pitchout:honeycomb"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"pitchout:skeleton_spawn_egg"}]}] run item replace entity @s hotbar.7 with air
execute as @a[nbt={Inventory:[{Slot:7b,id:"pitchout:shulker_spawn_egg"}]}] run item replace entity @s hotbar.7 with air

#-----------------------------------------------------------------------------