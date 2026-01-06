execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 19 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.tech.pos_hp=12..17}] run particle minecraft:soul ~ 49 ~ 0.1 0.8 0.1 0.1 150 force

execute as @a[scores={po.tech.pos_hp=12..17}] run kill @s