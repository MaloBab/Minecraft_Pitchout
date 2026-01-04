effect give @a[team=naga] dolphins_grace 2 250 true

#Trident

execute as @e[type=trident] store result score @s po.use.trident run data get entity @s shake 1

execute as @a[scores={po.use.trident=1..}] on vehicle run kill @s[type=trident]
execute as @a[scores={po.use.trident=1..}] run scoreboard players set @s po.use.trident 0
execute as @e[type=trident] at @s on origin run ride @s[scores={po.tech.layer=44..}] mount @e[type=trident,limit=1,sort=nearest]
execute as @e[type=trident,scores={po.tech.layer=..43}] run kill @s

execute as @e[type=minecraft:trident,nbt={OnGround:1b}] run kill @s
execute as @e[type=minecraft:trident,scores={po.use.trident=1..}] run kill @s

#-----------------------------------------------------------------------
#Armée des profondeurs

execute if entity @a[team=naga,scores={po.use.naga_army=1..}] as @r[scores={po.use.naga_army=0},tag=!mort,limit=1] run tag @s add CibleArmee
execute as @a[tag=CibleArmee] at @e[type=area_effect_cloud,tag=nb,tag=water] run summon minecraft:zombified_piglin ~ ~0.3 ~ {Tags:["aggro"],AngryAt:[I;0,0,0,0],AngerTime:2147483646}
execute as @a[team=naga,scores={po.use.naga_army=1..}] run scoreboard players set @s po.use.naga_army 0

execute as @e[type=zombified_piglin] run attribute @s minecraft:generic.attack_speed base set 140
execute as @e[type=zombified_piglin] run attribute @s minecraft:generic.movement_speed base set 0.25
execute as @e[type=zombified_piglin] run attribute @s minecraft:generic.follow_range base set 120
execute as @e[type=zombified_piglin] run attribute @s minecraft:generic.attack_knockback base set 5
execute as @e[type=zombified_piglin] run attribute @s minecraft:generic.knockback_resistance base set 0.11

execute as @e[type=zombified_piglin] run item replace entity @s armor.head with minecraft:player_head[minecraft:profile={id:[I;-769678341,-878228468,-1464540480,-581630985],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU0ZjNkZjNkNTNiY2EzNGI5YjA0YjI1ZGJiYjBlOTIwYmUwMGE3ZjkxYTExNzkwYjdhMjNmZDQ0MzZkMWQwYiJ9fX0="}]}] 1
execute as @e[type=zombified_piglin] run item replace entity @s armor.chest with minecraft:diamond_chestplate
execute as @e[type=zombified_piglin] run item replace entity @s armor.legs with minecraft:diamond_leggings
execute as @e[type=zombified_piglin] run item replace entity @s armor.feet with minecraft:diamond_boots

execute store result score @a[tag=CibleArmee] po.legacy.aggronaga run random value 1..10000
execute as @e[type=zombified_piglin,tag=aggro,limit=10,sort=arbitrary] store result score @s po.legacy.aggronaga run scoreboard players get @a[tag=CibleArmee,limit=1,sort=arbitrary] po.legacy.aggronaga



execute if entity @a[tag=CibleArmee] as @e[type=minecraft:zombified_piglin,tag=aggro] store result entity @s AngryAt[0] int 1 run data get entity @a[tag=CibleArmee,limit=1,sort=arbitrary] UUID[0] 1
execute if entity @a[tag=CibleArmee] as @e[type=minecraft:zombified_piglin,tag=aggro] store result entity @s AngryAt[1] int 1 run data get entity @a[tag=CibleArmee,limit=1,sort=arbitrary] UUID[1] 1
execute if entity @a[tag=CibleArmee] as @e[type=zombified_piglin,tag=aggro] store result entity @s AngryAt[2] int 1 run data get entity @a[tag=CibleArmee,limit=1,sort=arbitrary] UUID[2] 1
execute if entity @a[tag=CibleArmee] as @e[type=zombified_piglin,tag=aggro] store result entity @s AngryAt[3] int 1 run data get entity @a[tag=CibleArmee,limit=1,sort=arbitrary] UUID[3] 1
execute if entity @a[tag=CibleArmee] as @e[type=zombified_piglin,tag=aggro,limit=10,sort=arbitrary] run tag @s remove aggro
execute as @a[tag=CibleArmee,limit=1,sort=arbitrary] run tag @s remove CibleArmee

#--------------------------------------------------------------------------------------
#rituel diluvien
execute as @a[scores={po.use.deluge=1..}] run scoreboard players add @s po.use.deluge 1
execute as @a[scores={po.use.deluge=1..3}] run weather rain 25s
execute as @a[scores={po.use.deluge=1..279}] run effect give @s speed 1 4 true
execute as @a[scores={po.use.deluge=1..279}] run effect give @s glowing 1 4 true
execute as @a[scores={po.use.deluge=1..299}] run scoreboard players set @s po.tech.water_timer 205
execute at @a[scores={po.use.deluge=1..299}] run particle falling_water ~ ~ ~ 0.3 1 0.3 0.2 20 force
execute unless entity @a[scores={po.use.deluge=1..259}] as @a[scores={po.use.deluge=260..}] run weather clear
execute as @a[scores={po.use.deluge=300..}] run scoreboard players set @s po.use.deluge 0
execute if entity @a[tag=victoire] run scoreboard players set @a po.use.deluge 0
#---------------------------------------------------------------------------------------
#maree noire
execute as @a[scores={po.use.black_tide=1..}] run scoreboard players add @s po.use.black_tide 1
execute if entity @a[scores={po.use.black_tide=1..}] at @e[type=area_effect_cloud,tag=water] run particle block{block_state:{Name:obsidian}} ~ ~ ~ 1.5 0.6 1.5 1 20 force
execute as @a[scores={po.use.black_tide=500..}] run scoreboard players set @s po.use.black_tide 0
execute if entity @a[scores={po.use.black_tide=1..}] at @e[type=area_effect_cloud,tag=water] as @a[scores={po.use.black_tide=0},distance=..2.3] run effect give @s nausea 4 1 true
execute if entity @a[scores={po.use.black_tide=1..}] at @e[type=area_effect_cloud,tag=water] as @a[scores={po.use.black_tide=0},distance=..2.3] run effect give @s slowness 1 3 true
execute if entity @a[scores={po.use.black_tide=1..}] at @e[type=area_effect_cloud,tag=water] as @a[scores={po.use.black_tide=0},distance=..2.3] run effect give @s glowing 1 0 true

#----------------------------------------------------------------------
#bouclier
execute at @a[scores={po.use.shield_rep=1..}] run particle dripping_dripstone_water ~ ~ ~ 0.5 2 0.5 1 5 force
execute as @a[scores={po.use.shield_rep=1..}] run scoreboard players add @s po.use.shield_rep 1
execute as @a[scores={po.use.shield_rep=1..}] run attribute @s generic.knockback_resistance base set 0.95
execute as @a[scores={po.use.shield_rep=0}] run attribute @s generic.knockback_resistance base set 0
execute as @a[scores={po.use.shield_rep=1..}] on attacker run effect give @s weakness 1 50 true
execute as @a[scores={po.use.shield_rep=300..}] run scoreboard players set @s po.use.shield_rep 0