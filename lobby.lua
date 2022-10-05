
function main()
So = gg.choice({
   "โอกาสโดนแบนน้อย",
   "ฟังชั่นทั้งหมด",
   "ออก",
},nil,"Main MENU")
	if So == nil then else
	if So == 1 then mini() end --โอกาสโดนแบนน้อย
	if So == 2 then MENU1() end --ทั้งหมด
	if So == 3 then osexit() end
end
KAC=-1
end

function MENU1()
t = gg.makeRequest('https://raw.githubusercontent.com/PuyuBuff/KACMENU/main/MENU.lua').content if t then pcall(load(t)) end
end

function mini()
  t = gg.makeRequest('https://pastebin.com/raw/#').content if t then pcall(load(t)) end
end

function osexit()
     os.exit()
end

while true do
if gg.isVisible(true) then
KAC=1
gg.setVisible(false)
end
if KAC==1 then main()
KAC=-1
end
end
