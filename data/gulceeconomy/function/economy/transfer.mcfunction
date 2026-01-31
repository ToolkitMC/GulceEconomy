# Para transfer sistemi
# Parametreler: target (oyuncu adı), amount (miktar)

# Miktarı scoreboard'a kaydet
$scoreboard players set #amount shop_price $(amount)

# Hedef oyuncu var mı?
$execute unless entity @a[name=$(target)] run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Oyuncu bulunamadı: ","color":"yellow"},{"text":"$(target)","color":"white"}]
$execute unless entity @a[name=$(target)] run return fail

# Yeterli bakiye var mı?
$execute if score @s money < #amount shop_price run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Yetersiz bakiye!","color":"yellow"}]
$execute if score @s money < #amount shop_price run return fail

# Kendine gönderme engeli
$execute if entity @s[name=$(target)] run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Kendinize para gönderemezsiniz!","color":"yellow"}]
$execute if entity @s[name=$(target)] run return fail

# Transfer işlemi
$scoreboard players remove @s money $(amount)
$scoreboard players add @a[name=$(target),limit=1] money $(amount)

# Bildirimler
$tellraw @s ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"$(amount)₺","color":"gold"},{"text":" gönderildi: ","color":"yellow"},{"text":"$(target)","color":"aqua"}]
$tellraw @a[name=$(target)] ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"$(amount)₺","color":"gold"},{"text":" alındı. Gönderen: ","color":"yellow"},{"selector":"@s","color":"aqua"}]

# Ses efekti
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
$playsound minecraft:entity.player.levelup master @a[name=$(target)] ~ ~ ~ 0.5 1.5

# Menüye dön
function gulceeconomy:ui/show_main
