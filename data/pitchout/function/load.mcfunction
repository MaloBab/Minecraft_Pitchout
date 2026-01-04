# ==========================================
# PITCHOUT - INITIALISATION (1.21)
# ==========================================

# 1. Message de confirmation console/admin
tellraw @a[tag=admin] {"text":"[Pitchout] Datapack chargé/rechargé avec succès.","color":"green"}

# 2. Initialisation des teams si celles-ci n'existent pas
function pitchout:init/teams

# 3. Initialisation des Scoreboards Globaux (Convention de nommage stricte)
# po.main : États du jeu, timers globaux
scoreboard objectives add po.main dummy
# po.stats : Statistiques joueurs (kills, morts, coins)
scoreboard objectives add po.stats dummy
# po.tech : Variables techniques temporaires (calculs)
scoreboard objectives add po.tech dummy

# 4. Initialisation des variables globales (Fake Players)
# $gameState : 0 = Lobby, 1 = En jeu, 2 = Fin
scoreboard players set $gameState po.main 0
# $timer : Timer global pour le jeu
scoreboard players set $globalTimer po.main 0

# 5. Paramétrages de jeu (Gamerules)
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule doImmediateRespawn true
gamerule keepInventory true

# 6. Lancer la boucle du Hub si le jeu n'est pas lancé
execute if score $gameState po.main matches 0 run function pitchout:hub/init