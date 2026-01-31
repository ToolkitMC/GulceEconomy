# Admin: Para ekle/çıkar
# Parametreler: target (oyuncu), amount (miktar)

# Oyuncu var mı?
$execute unless entity @a[name=$(target)] run tellraw @s ["",{"text":"[Admin] ","color":"red","bold":true},{"text":"Oyuncu bulunamadı: ","color":"yellow"},{"text":"$(target)","color":"white"}]
$execute unless entity @a[name=$(target)] run return fail

# Para değiştir
$scoreboard players add @a[name=$(target),limit=1] money $(amount)

# Bildirim
$tellraw @s ["",{"text":"[Admin] ","color":"green","bold":true},{"text":"$(target)","color":"aqua"},{"text":" için bakiye değiştirildi: ","color":"yellow"},{"text":"$(amount)₺","color":"gold"}]
$tellraw @a[name=$(target)] ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"Bakiyeniz bir yetkili tarafından değiştirildi.","color":"yellow"}]

# Ses
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
