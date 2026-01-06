# ===============================================================
# PITCHOUT - MAIN LOOP (20 ticks/seconde)
# ===============================================================

# 1. Timer Global (Sert pour tout le datapack)
scoreboard players add $globalTimer po.tech 1

# 2. GESTION DES ÉTATS (State Machine)

# ÉTAT 0 : HUB (Lobby)
# Si $gameState est à 0, on exécute la boucle du Hub
execute if score $gameState po.main matches 0 run function pitchout:hub/tick

# ÉTAT 1 : JEU (Partie en cours)
 execute if score $gameState po.main matches 1 run function pitchout:game/tick

# ÉTAT 2 : FIN (Podium / Reset)
# execute if score $gameState po.main matches 2 run function pitchout:end/tick