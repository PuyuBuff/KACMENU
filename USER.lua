KILL=1


if User=="Test" then
if os.date("%Y%m%d") > "20221025" then
gg.alert("หมดอายุแล้วจ้า")
os.exit()
end
    t = gg.makeRequest('https://raw.githubusercontent.com/PuyuBuff/KACMENU/main/MENU.lua').content if t then pcall(load(t)) end
KILL=0
end

if User=="KaChini" then
    t = gg.makeRequest('https://raw.githubusercontent.com/PuyuBuff/KACMENU/main/MENU.lua').content if t then pcall(load(t)) end
KILL=0
end

if KILL==1 then
gg.alert("ไม่มีไอดีนี้")
io.open("/storage/emulated/0/Android/data/LOGIN.lua","w")
LOGOUT()
end
