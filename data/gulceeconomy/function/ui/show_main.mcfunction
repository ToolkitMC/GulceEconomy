# Trigger etkinleştir
scoreboard players enable @s economy

# Ana menüyü aç
function gulceeconomy:ui/show_dialog {dialog:"gulceeconomy:main_menu"}

# Konsol mesajı
tellraw @a ["",{"text":"[GulceEconomy] ","color":"gold","bold":true},{"text":"Menü açıldı!","color":"green"}]
tellraw @a ["",{"text":"Tekrar açmak için: ","color":"yellow"},{"text":"/trigger economy","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger economy"}}]