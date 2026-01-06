execute as @e run execute store result score @s po.tech.layer run data get entity @s Pos[1] 1

#---------------------------------------------------------
#kill des entites inutiles

kill @e[type=minecraft:item,tag=!vide,nbt=!{Item:{id:"minecraft:iron_nugget"}},nbt=!{Item:{id:"minecraft:creeper_banner_pattern"}},nbt=!{Item:{id:"minecraft:globe_banner_pattern"}},nbt=!{Item:{id:"minecraft:flower_banner_pattern"}},nbt=!{Item:{id:"minecraft:piglin_banner_pattern"}},nbt=!{Item:{id:"minecraft:skull_banner_pattern"}},nbt=!{Item:{id:"minecraft:mojang_banner_pattern"}}]
kill @e[type=minecraft:arrow,nbt={inGround:1b},tag=!mouv,tag=!Vis,tag=!Bar,tag=!Ftp,tag=!Ftp2]


#---------------------------------------------------------
#Impossibilité de blesser les joueurs

effect give @a minecraft:resistance 99999 10 true

#--------------------------------------------------------------
#un demi gigot de nourriture manquant

execute as @a[scores={po.tech.food=20}] run effect give @s minecraft:hunger 1 250 true
execute as @a[scores={po.tech.food=..18}] run effect give @s minecraft:saturation 1 0 true

#--------------------------------------------------------------
#affichage nombre de vie + gestion inventaire

execute as @a[scores={po.tech.remaining_lives=5}] run item replace entity @s hotbar.8 with minecraft:redstone 5
execute as @a[scores={po.tech.remaining_lives=4}] run item replace entity @s hotbar.8 with minecraft:redstone 4
execute as @a[scores={po.tech.remaining_lives=3}] run item replace entity @s hotbar.8 with minecraft:redstone 3
execute as @a[scores={po.tech.remaining_lives=2}] run item replace entity @s hotbar.8 with minecraft:redstone 2
execute as @a[scores={po.tech.remaining_lives=1}] run item replace entity @s hotbar.8 with minecraft:redstone 1

execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=3..},team=!ingenieur] run clear @s

#--------------------------------------------------------------
#reset inventaire flèche + livre

execute as @a[team=!hub] run item replace entity @s container.17 with minecraft:arrow 1
clear @a[team=!hub] minecraft:written_book