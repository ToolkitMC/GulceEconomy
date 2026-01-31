# Tüm oyuncuların bakiyelerini göster
tellraw @s ["",{"text":"========== ","color":"gold","bold":true},{"text":"💰 TÜM BAKİYELER","color":"yellow"},{"text":" ==========","color":"gold"}]

execute as @a run tellraw @s[tag=!shown] ["",{"selector":"@s","color":"aqua"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"money"},"color":"green"},{"text":"₺","color":"gold"}]

tellraw @s ["",{"text":"=====================================","color":"gold"}]
