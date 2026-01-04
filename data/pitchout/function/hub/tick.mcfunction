# Gestion de l'Actionbar (Titre, info)
title @a actionbar {"text":"En attente de lancement...","color":"gray"}

# Effets permanents au Hub (Saturation, etc.)
effect give @a minecraft:saturation 1 255 true
effect give @a minecraft:weakness 1 255 true
effect give @a minecraft:instant_health 1 255 true

# Détection de chute
execute as @a at @s if entity @s[y=40,dy=-40] run tp @s 300 48 100