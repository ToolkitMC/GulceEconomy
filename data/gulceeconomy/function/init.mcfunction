# GulceEconomy - Başlatma Fonksiyonu
# Scoreboard ve storage hazırlama

# Scoreboard oluştur
scoreboard objectives add money dummy "💰 Para"
scoreboard objectives add money_temp dummy
scoreboard objectives add shop_price dummy
scoreboard objectives add economy trigger

# Storage hazırla
data merge storage gulceeconomy:ui {main_menu:"gulceeconomy:main_menu"}

# Konsol mesajı
tellraw @a ["",{"text":"[GulceEconomy] ","color":"gold","bold":true},{"text":"Sistem başlatıldı!","color":"green"}]
tellraw @a ["",{"text":"Kullanım: ","color":"yellow"},{"text":"/trigger economy","color":"aqua","underlined":true,"click_event":{"action":"run_command","command":"/trigger economy"}}]