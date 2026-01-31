# Admin: Bakiye sıfırla
# Parametre: target (oyuncu)

# Oyuncu var mı?
$execute unless entity @a[name=$(target)] run tellraw @s ["",{"text":"[Admin] ","color":"red","bold":true},{"text":"Oyuncu bulunamadı: ","color":"yellow"},{"text":"$(target)","color":"white"}]
$execute unless entity @a[name=$(target)] run return fail

# Sıfırla
$scoreboard players set @a[name=$(target),limit=1] money 0

# Bildirim
$tellraw @s ["",{"text":"[Admin] ","color":"green","bold":true},{"text":"$(target)","color":"aqua"},{"text":" bakiyesi sıfırlandı.","color":"yellow"}]
$tellraw @a[name=$(target)] ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Bakiyeniz bir yetkili tarafından sıfırlandı.","color":"yellow"}]

# Ses
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.3 2
