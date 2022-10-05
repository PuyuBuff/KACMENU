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

function osexit()
	os.exit()
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


function C()
io.open("/storage/emulated/0/Android/data/com.asobimo.iruna_thai/ngword.zip","w")
end


function Basic() --พื้นฐาน
a = gg.multiChoice({
        "ตีไว",
        "ดีเล",
        "ตีไกล",
        "ซ่อนชื่อ",
        "วิ่งเร็ว",
        "เดินทะลุ",
        "กลับ",
},nil,"พื้นฐาน")
    if a == nil then else
    if a[1] then ATK() end --ตีไว
    if a[2] then DL() end --ดีเล
    if a[3] then Col1() end --ตีไกล
    if a[4] then HN() end --ซ่อนชื่อ
    if a[5] then Run() end --วิ่งเร็ว
    if a[6] then G() end --เดินทะลุ
    if a[7] then menu() end
end
KAC=-1
end


function Col1()
Nani = gg.choice({
        "ใช้แล้ว",
        "กลับ",
},nil,"ใช้ดราก้อนคลอว์")
    if Nani == nil then else
    if Nani==1 then ATK1() end
    if Nani==2 then MENU1() end
end
KAC=-1
end
    
function ATK1()
e = gg.choice({
    "ดราก้อนคลอ",
    "กลับ",
},nil,"ตีไกล")
    if e == nil then else
    if e ==1 then dragon() end
    if e ==2 then MENU1() end
end
KAC=-1
end
    
function dragon()
    gg.clearResults()
    gg.searchNumber('27018', gg.TYPE_DWORD)
    gg.refineNumber('27018', gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = -128
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true --true,false
    s[1].name = "ตีไกล"
    s[1].value = 15
    gg.setValues(s)
    gg.addListItems(s)
end

function DL()
    gg.clearResults()
    gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
    gg.refineNumber('3', gg.TYPE_DWORD)
    Results = gg.getResults(1)
qa = gg.choice({
    "เปิด",
    "ปิด",
},nil,"ยิ่งเลขเยอะยิ่งช้า")
    if qa == nil then else
    if qa==1 then DLL() end
    if qa==2 then PDL() end
end
KAC=-1
end




function Run()
    gg.clearResults()
    gg.searchNumber('3;1;-1;0::13', gg.TYPE_DWORD)
    gg.refineNumber('3', gg.TYPE_DWORD)
    R = gg.prompt({"Speed run[0;15]"},nil,{"number"})
    Results = gg.getResults(1)
    offset = 0xA4
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 16
    s[1].freeze = true
    s[1].name = "วิ่ง"
    s[1].value = R[1]
    gg.setValues(s)
    gg.addListItems(s)
end   

function G()
    gg.clearResults()
    gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
    gg.refineNumber('3', gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 0xD4
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 16
    s[1].freeze = true
    s[1].name = "เดินทะลุ"
    s[1].value = 2
    gg.setValues(s)
    gg.addListItems(s)
    gg.clearResults()
end

  
function PDL()
    offset = 0x6C
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "ดีเลย์สกิล"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
    offset = 0x78
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "ดีเลย์ไอเทม"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
    offset = 0x84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "ร่ายสกิล"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
end
    
function DLL()
    offset = 0x6C
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true --true,false
    s[1].name = "ดีเลย์สกิล"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
    offset = 0x78
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true --true,false
    s[1].name = "ดีเลย์ไอเทม"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
    offset = 0x84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true --true,false
    s[1].name = "ร่ายสกิล"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
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



















