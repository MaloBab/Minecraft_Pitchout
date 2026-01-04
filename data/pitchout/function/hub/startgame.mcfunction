clear @a[team=hub]
scoreboard players set debut po.tech.global_timer 0
scoreboard players set @a[team=hub] po.tech.remaining_lives 6
scoreboard players set @a[team=hub] po.legacy.detectmort 1
execute if score select po.map.vote_id matches 1 run spreadplayers 6.55 12.44 10 30 false @a[team=hub]
execute if score select po.map.vote_id matches 2 run spreadplayers 587 96 20 30 false @a[team=hub]
execute if score select po.map.vote_id matches 3 run spreadplayers 1572 108 10 80 false @a[team=hub]
execute if score select po.map.vote_id matches 4 run spreadplayers 465 -297 10 80 false @a[team=hub]
title @a clear
kill @e[type=chest_minecart]
scoreboard players set debut po.tech.global_timer 0