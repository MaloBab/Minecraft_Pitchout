clear @a[team=hub]
scoreboard players set debut timer 0
scoreboard players set @a[team=hub] vie 6
scoreboard players set @a[team=hub] DetectMort 1
execute if score select map matches 1 run spreadplayers 6.55 12.44 10 30 false @a[team=hub]
execute if score select map matches 2 run spreadplayers 587 96 20 30 false @a[team=hub]
execute if score select map matches 3 run spreadplayers 1572 108 10 80 false @a[team=hub]
execute if score select map matches 4 run spreadplayers 465 -297 10 80 false @a[team=hub]
title @a clear
kill @e[type=chest_minecart]
scoreboard players set debut timer 0