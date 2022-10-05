
function main()
So = gg.choice({
   "โอกาสโดนแบนน้อย",
   "ฟังชั่นทั้งหมด",
   "ออก",
},nil,"Main MENU")
	if So == nil then else
	if So == 1 then mini() end --โอกาสโดนแบนน้อย
	if So == 2 then MENU1() end --ทั้งหมด
	if So == 3 then os.exit() end
end
KAC=-1
end

function MENU1() --ทั้งหมด
t = gg.choice({
"⪼ 1.นาวาสายลม ⪻",
"⪼ 2.วนบอส ⪻",
"⪼ 3.ปลดล็อคคำหยาบ ⪻",
"⪼ 4.เควส ⪻",
"⪼ 5.พื้นฐาน ⪻",
"⪼ กลับ ⪻",
},nil,"VIP Full Online")
if t == nil then else
if t==1 then Nava() end --นาวาสายลม
if t==2 then Loop() end --วนบอส
if t==3 then C() end --ปลดล็อคคำหยาบ
if t==4 then Qas() end --เควส
if t==5 then Basic() end --พื้นฐาน
if t==6 then  main() end --ออก
end
KAC=-1
end

function Nava()
  t = gg.makeRequest('https://pastebin.com/raw/#').content if t then pcall(load(t)) end
end

function Loop()
	t = gg.makeRequest('https://pastebin.com/raw/#').content if t then pcall(load(t)) end
end

function Qas()
	t = gg.makeRequest('https://pastebin.com/raw/#').content if t then pcall(load(t)) end
end


function Basic()
t = gg.makeRequest('https://raw.githubusercontent.com/PuyuBuff/KACMENU/main/Basic.lua').content if t then pcall(load(t)) end
end

function C()
io.open("/storage/emulated/0/Android/data/com.asobimo.iruna_thai/ngword.zip","w")
end



function osexit()
print(os.date([[

%A %d %B %Y
%H:%M%p %Z %z

████████████
██▄▄████▄▄██

]]))
print ("By KaChini")




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




















