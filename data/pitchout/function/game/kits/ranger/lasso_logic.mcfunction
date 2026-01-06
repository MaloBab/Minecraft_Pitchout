# ===============================================================
# LOGIQUE DU LASSO (Exécuté par le bouchon @s)
# ===============================================================

# 1. Identifier le PROPRIÉTAIRE (Celui qui a lancé ce bouchon précis)
execute on owner run tag @s add current_lasso_owner
execute at @s as @a[distance=..2,tag=!current_lasso_owner,gamemode=!spectator] run tp @s @p[tag=current_lasso_owner,limit=1]
execute at @s if entity @a[distance=..2,tag=!current_lasso_owner,gamemode=!spectator] run tag @s add lasso_hit
execute on owner run tag @s remove current_lasso_owner
execute as @s[tag=lasso_hit] run kill @s