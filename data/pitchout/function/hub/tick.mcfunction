# Gestion de l'Actionbar (Titre, info)
scoreboard players operation $animTimer po.tech = $globalTimer po.tech
scoreboard players operation $animTimer po.tech %= #40 po.tech

# Phase 1 : "En attente de lancement" (Tick 0-9)
execute as @a unless score @s play matches 1.. if score $animTimer po.tech matches 0..9 run title @a actionbar {"text":"En attente de lancement","color":"gray"}

# Phase 2 : "En attente de lancement." (Tick 10-19)
execute as @a unless score @s play matches 1.. if score $animTimer po.tech matches 10..19 run title @a actionbar {"text":"En attente de lancement.","color":"gray"}

# Phase 3 : "En attente de lancement.." (Tick 20-29)
execute as @a unless score @s play matches 1.. if score $animTimer po.tech matches 20..29 run title @a actionbar {"text":"En attente de lancement..","color":"gray"}

# Phase 4 : "En attente de lancement..." (Tick 30-39)
execute as @a unless score @s play matches 1.. if score $animTimer po.tech matches 30..39 run title @a actionbar {"text":"En attente de lancement...","color":"gray"}

execute as @a if score @s play matches 1.. run title @a actionbar {"text":""}

# Effets permanents au Hub (Saturation, etc.)
effect give @a minecraft:saturation 1 255 true
effect give @a minecraft:weakness 1 255 true
effect give @a minecraft:instant_health 1 255 true

# Détection de chute
execute positioned 300 48 100 as @a[distance=..200] at @s if entity @s[y=40,dy=-40] run tp @s 300 48 100

# Gestion des Menus / Raycasting / Actionbar
# 1. Gestion Générale & Ambiance

function pitchout:hub/main_hub
function pitchout:hub/titres
function pitchout:hub/livres

# 2. Gestion de la Configuration de Partie (Map, Mode, Settings)
function pitchout:hub/setgame
function pitchout:hub/typepartie
function pitchout:hub/map

# 3. Gestion des Kits
function pitchout:hub/kit/selectionkit

# 4. Gestion du Shop (Boutique)
function pitchout:hub/shop/selection/gestionshop
function pitchout:hub/shop/achat/kits
function pitchout:hub/shop/achat/pelles
function pitchout:hub/shop/achat/cosmetic