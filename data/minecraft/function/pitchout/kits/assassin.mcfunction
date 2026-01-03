execute at @e[type=minecraft:area_effect_cloud,tag=Fumee] run particle minecraft:campfire_signal_smoke ~ ~0.5 ~ 2.5 1.2 2.5 0.01 50 normal
execute as @e[type=minecraft:item_frame,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b,Invulnerable:1b,Item:{id:"sculk_vein",Count:1b}}
kill @e[type=minecraft:potion]

execute at @a[scores={fumi=1..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:110,Tags:["Fumee"]}
execute as @a[scores={fumi=1..}] run scoreboard players set @s fumi 0

execute at @e[type=minecraft:item_frame] run effect give @a[distance=..2.2,team=!assassin,gamemode=adventure] minecraft:darkness 4 0 true
execute at @e[type=minecraft:item_frame] run effect give @a[distance=..2.2,team=!assassin,gamemode=adventure] minecraft:slowness 4 2 true
execute at @a[team=!assassin,gamemode=adventure] run kill @e[type=minecraft:item_frame,distance=..2.2]

execute as @a[scores={assassinat=1..}] run execute at @s run execute at @a[limit=1,tag=!mort,sort=random,distance=1..] run tp @s ^-1 ^0.2 ^ facing entity @a[distance=..2,limit=1] feet
execute as @a[scores={assassinat=1..}] run scoreboard players set @s assassinat 0