# ===============================================================
# PITCHOUT - LOAD (Démarrage / Reload)
# ===============================================================

# 1. Feedback Console
tellraw @a[tag=admin] {"text":"[Pitchout] Système chargé (v1.21).","color":"green"}

# 2. Règles de base (Gamerules)
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
# Pour éviter que les entités ne spawnent naturellement dans le hub
gamerule doMobSpawning false 

# 3. Initialisation des Scoreboards Système
# po.main : Gère l'état du jeu (0=Hub, 1=Jeu, 2=Fin)
scoreboard objectives add po.main dummy
# po.tech : Variables techniques temporaires
scoreboard objectives add po.tech dummy

# 4. Chargement des Teams (pour éviter les warnings VS Code)
function pitchout:anti_warnings/teams

# 5. Démarrage du Hub (Sécurité)
# Si aucun état n'est défini (premier lancement), on force le Hub
execute unless score $gameState po.main matches 0.. run scoreboard players set $gameState po.main 0

# Si on est au Hub (0), on lance l'init du Hub pour tp les joueurs, etc.
execute if score $gameState po.main matches 0 run function pitchout:hub/init