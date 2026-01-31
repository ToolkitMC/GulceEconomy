# Admin panel yetkisi kontrolü
execute if entity @s[tag=!op] unless entity @s[type=player,tag=admin] run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Bu panele erişim yetkiniz yok!","color":"yellow"}]
execute if entity @s[tag=!op] unless entity @s[type=player,tag=admin] run return fail

# Yetki varsa admin panelini aç
dialog show @s gulceeconomy:admin_panel
