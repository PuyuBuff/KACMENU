gg.alert(os.date([[
เวลาเปิดสคริปต์
%c]]))
function main()
So = gg.choice({
   "โอกาสโดนแบนน้อย",
   "ฟังชั่นทั้งหมด",
   "ออก",
},nil,"Main MENU")
if So == nil then else
if So == 1 then mini() end --โอกาสโดนแบนน้อย
if So == 2 then MENU1() end --ทั้งหมด
if So == 4 then os.exit() end
end
NUX=-1
end

function mini() --โอกาสโดนแบนน้อย
gg.clearResults()
gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
gg.refineNumber('3', gg.TYPE_DWORD)
Results = gg.getResults(1)
n = gg.multiChoice({
   "ตีรัวระดับต่ำ",
   "ลดดีเลย์ระดับต่่ำ",
   "วิ่งเร็ว",
   "ปิดทั้งหมด",
   "กลับ",
},nil,"โอกาสโดนแบนน้อย")
if n == nil then else
if n[1] then ATK600() end
if n[2] then DL300() end
if n[3] then Run() end
if n[4] then ppg() end
if n[5] then main() end
end
NUX=-1
end

function ppg()
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = false
s[1].freezeFrom = 0
s[1].freezeTo = 300
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
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
offset = 0xA4
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 16
s[1].freeze = false
s[1].name = "วิ่งไว"
s[1].value = 1
gg.setValues(s)
gg.addListItems(s)
end

function ATK600()
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 1000
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
end


function DL300()
offset = 0x6C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 1000
gg.addListItems(s)
offset = 0x78
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 1000
gg.addListItems(s)
offset = 0x84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 1000
gg.addListItems(s)
end

















function MENU1() --ทั้งหมด
t = gg.choice({
"⪼ 1.นาวาสายลม ⪻",
"⪼ 2.วนบอส ⪻",
"⪼ 3.ปลดล็อคคำหยาบ ⪻",
"⪼ 4.เควส ⪻",
"⪼ 5.พื้นฐาน ⪻",
"⪼ 6.วาป ⪻",
"⪼ กลับ ⪻",
},nil,"VIP Full Online")
if t == nil then else
if t==1 then Nava() end --นาวาสายลม
if t==2 then Loop() end --วนบอส
if t==3 then C() end --ปลดล็อคคำหยาบ
if t==4 then Qas() end --เควส
if t==5 then Basic() end --พื้นฐาน
if t==6 then warp() end --วาป
if t==7 then  main() end --ออก
end
NUX=-1
end

function warp() --วาป
t = gg.makeRequest('https://pastebin.com/raw/nstbdYVf').content if t then pcall(load(t)) end
end

function panpan() --โปรปั่น
Ha = gg.choice({
	"ตัวหมุน",
	"มิติมืด",
	"กลับ",
},nil,"เควส")
if Ha == nil then else
if Ha==1 then mun() end --ตัวหมุน
if Ha==2 then mid() end --มิติมืด
if Ha==3 then MENU1() end
end
NUX=-1
end

function mun() --ตัวหมุน
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('180', gg.TYPE_FLOAT)
gg.getResults(1)
gg.editAll(-1, gg.TYPE_FLOAT)
gg.clearResults()
end

function mid() --มิติมืด
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('255', gg.TYPE_FLOAT)
gg.getResults(9999999)
gg.editAll(1, gg.TYPE_FLOAT)
gg.clearResults()
end

function Loop() --วนบอส
t = gg.makeRequest('https://pastebin.com/raw/GsurRjY0').content if t then pcall(load(t)) end
end

function Qas() --เควส
qa = gg.choice({
	"กดข้ามอัตโนมัติ",
	"พูดคุยอัตโนมัติ",
	"กลับ",
},nil,"เควส")
if qa == nil then else
if qa==1 then D() end --กดข้ามอัตโนมัติ
if qa==2 then F() end --พูดคุยอัตโนมัติ
if qa==3 then MENU1() end
end
NUX=-1
end

function Nava() --นาวาสายลม
Na = gg.choice({
	"บอส",
	"วาป",
	"กลับ",
},nil,"นาวาสายลม")
if Na == nil then else
if Na==1 then B() end --บอส
if Na==2 then A() end --วาป
if Na==3 then MENU1() end
end
NUX=-1
end

function Basic() --พื้นฐาน
a = gg.multiChoice({
	"ตีไว",
	"ดีเล",
	"ตีไกล",
	"มุดแมพ",
	"ซ่อนชื่อ",
	"วิ่งเร็ว",
	"เดินทะลุ",
"ลบเอฟเฟกต์",
"สกิลไกล",
	"กลับ",
},nil,"พื้นฐาน")
if a == nil then else
if a[1] then ATK() end --ตีไว
if a[2] then DL() end --ดีเล
if a[3] then ATK1() end --ตีไกล
if a[4] then mud() end --มุดแมพ
if a[5] then HN() end --ซ่อนชื่อ
if a[6] then Run() end --วิ่งเร็ว
if a[7] then G() end --เดินทะลุ
if a[8] then eff() end --ลบเอฟเฟกต์
if a[9] then FAR() end --สกิลไกล
if a[10] then MENU1() end
end
NUX=-1
end

function FAR()
ZI = gg.multiChoice({
           "นักฆ่า 🔪",
           "สไนเปอร์ 🔫",
           "พระ ✨",
           "ขมังเวท 🔮",
           "พรต 🐒",
		   "นินจา✵",
           "🌊กลับ"
}, nil, "ทักษะของแต่ละคลาส 👥")
  if ZI == nil then
  else
    if ZI [1] == true then
      ZI1()
    end
    if ZI [2] == true then
     ZI2()
    end
    if ZI [3] == true then
     ZI3()
    end
    if ZI [4] == true then
     ZI4()
    end
   if ZI [5] == true then
      ZI5()
    end
	if ZI [6] == true then
      ZI6()
    end
    if ZI [7] == true then
      os.exit()
    end
  end
  NUX=-1
end


function ZI6()
A = gg.choice({"แยกร่างรุมตี","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nนินจา 🔫")
if A == 1 then NIN1() end
if A == 2 then FAR() end
end

function NIN1()
gg.clearResults()
gg.searchNumber("7198;1;48;0;10:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("28", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("เสร็จสิ้น⛅")
A = gg.alert("แยกร่างรุมตี เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI6() end
end

function ZI1() -- ข้อหัว1
A = gg.choice({"🔪Backstab", "💃Phantom Step","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nนักฆ่า 🔪")
if A == 1 then ASS1() end
if A == 2 then ASS2() end
if A == 3 then FAR() end
end

function ASS1() -- Backstab
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("7047;2;100;7:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("30", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('เสร็จสิ้น⛅')
A = gg.alert("🔪Backstab เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI1() end
end

function ASS2() -- Phantom Step
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("7413;1;120;0;12:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("28", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('เสร็จสิ้น⛅')
A = gg.alert("💃Phantom Step เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI1() end
end

function ZI2()
A = gg.choice({"🔥Cross fire", "🌀Area rain","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nสไนเปอร์ 🔫")
if A == 1 then SN1() end
if A == 2 then SN2() end
if A == 3 then FAR() end
end

function SN1() -- Cross Fire
gg.setRanges(gg.REGION_JAVA_HEAP)
gg.searchNumber("7083;0;12:17", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("12", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("28", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("เสร็จสิ้น⛅")
A = gg.alert("🔥Cross fire เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI2() end
end

function SN2() -- Area Rain
gg.setRanges(gg.REGION_JAVA_HEAP)
gg.searchNumber("7082;0;12:17", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("12", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("28", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("เสร็จสิ้น⛅")
A = gg.alert("🌀Area rain เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI2() end
end

function ZI3()
A = gg.choice({"🌟Nemesis", "💗Heal","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nพระ ✨")
if A == 1 then BH1() end
if A == 2 then BH2() end
if A == 3 then FAR() end
end

function BH1() -- Nemesis
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("5007;5;12:17", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
  gg.refineNumber("12", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
  gg.getResults(100,nil,nil,nil,nil,nil,nil,nil,nil)
  gg.editAll("28", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("เสร็จสิ้น⛅")
A = gg.alert("🌟Nemesis เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI3() end
end

function BH2() -- Heal
  gg.setRanges(gg.REGION_JAVA_HEAP)
  gg.searchNumber("5002;1;120;0;12:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("28", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast('เสร็จสิ้น⛅')
A = gg.alert("💗Heal เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI3() end
end

function ZI4() -- High Wizard
A = gg.choice({"👋Bandersnatch", "🌟Zero ray","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nพ่อมดขั้นสูง 🔮")
if A == 1 then SNN1() end
if A == 2 then SNN2() end
if A == 3 then FAR() end
end

function SNN1() -- BN
gg.setRanges(gg.REGION_JAVA_HEAP)
gg.searchNumber("7345;1;400;7;16:17", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("16", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("27", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("เสร็จสิ้น⛅")
A = gg.alert("👋Bandersnatch เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI4() end
end

function SNN2() -- ZR
gg.setRanges(gg.REGION_JAVA_HEAP)
gg.searchNumber("7345;1;884;7;2:17", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_DWORD, false, gg.SING_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("27", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("เสร็จสิ้น⛅")
A = gg.alert("🌟Zero ray เสร็จสิ้น⛅", "ต่อ", nil, "ออก")
if A == 1 then ZI4() end
end

function LOOP()
gg.setRanges(gg.REGION_JAVA_HEAP)
gg.searchNumber("41;41;180:25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("180", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("-1", gg.TYPE_DWORD)
gg.clearResults()
gg.toast('เสร็จสิ้น⛅')
end

function ZI5() ---อาชีพม้อง,พรต
A = gg.choice({"🍘Geo-breakers","🌊ก ลั บ"}, nil, "ทักษะเมนู😇\nพระลุย 🐒")
if A == 1 then GB() end
if A == 2 then FAR() end
end


function eff()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('180', gg.TYPE_FLOAT)
gg.getResults(1)
gg.editAll(0, gg.TYPE_FLOAT)
gg.clearResults()
end






function HN()
gg.clearResults()
    r1 = {"-696"}
    gg.setRanges(gg.REGION_JAVA_HEAP)
    gg.searchNumber("169;169;1;1;1;1;1::70", gg.TYPE_DWORD)
    gg.refineNumber("169", gg.TYPE_DWORD)
    q = gg.getResults(1)
    for search = 1, #r1 do
        offset = {}
        offset[search] = {}
        offset[search].address = q[1].address + r1[search]
        offset[search].flags = 4
        offset[search].value = 1
        offset[search].freeze = true
        offset[search].name = "Name"
        gg.setValues(offset)
        gg.addListItems(t)
        gg.toast("Hide Name")
        break
    end
end

function mud()
gg.clearResults()
gg.searchNumber('0;0.1::5',gg.TYPE_FLOAT)
gg.refineNumber('0.1',gg.TYPE_FLOAT)
t = gg.getResults(100)
for i, v in ipairs(t) do
	t[i].value = '0'
	t[i].freeze = false
	t[i].name = "มุดแมพ"
 gg.setValues(t)
gg.clearResults()
end
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
NUX=-1
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
NUX=-1
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

function Red()
gg.clearResults()
gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
gg.refineNumber("11001~20008", gg.TYPE_DWORD)
r = gg.choice({
"เรดซากุระ50",
"เรดซากุระ100",
"เรดซากุระ150",
"เออแบนเรด200",
"เออแบนเรด220",
"มินาอุระเรด200",
"ท่าเรือปากัสเรด220",
"ท่าเรือปากัสเรด230",
"กลับ",
},nil,"เรดฟังก์ชั่น")
if r == nil then else
if r==1 then r50() end
if r==2 then r100() end
if r==3 then r150() end
if r==4 then red200() end
if r==5 then red220() end
if r==6 then mi200() end
if r==7 then pa220() end
if r==8 then pa230() end
if r==9 then MENU1() end
end
NUX=-1
end

function pa230()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 102491
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 11264
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  22272
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function pa220()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 101691
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 13056
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  40448
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function mi200()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 101091
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 22528
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  20480
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function red220()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 79891
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 17920
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  11520
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function red200()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 79691
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 22528
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  23040
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function r50()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 74490
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 25344
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  46080
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end


function r100()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 74491
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 25344
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  46080
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end



function r150()
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 74492
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 25344
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  46080
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end


function A()
gg.clearResults()
gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
gg.refineNumber("11001~20008", gg.TYPE_DWORD)
Results = gg.getResults(1)
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 80000
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 20480
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  14848
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function B()
gg.clearResults()
gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
gg.refineNumber("11001~20008", gg.TYPE_DWORD)
Results = gg.getResults(1)
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 80010
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 20480
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  14848
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
gg.clearResults()
end

function C()
io.open("/storage/emulated/0/Android/data/com.asobimo.iruna_thai/ngword.zip","w")
end

function D()
gg.clearResults()
gg.searchNumber("11001" , gg.TYPE_DWORD)
gg.refineNumber("11001", gg.TYPE_DWORD)
Results = gg.getResults(1)
offset = 224
S = {}
S[1] = {}
S[1].address = Results[1].address + offset
S[1].flags = 4
S[1].freeze = true
S[1].name = "auto skip"
S[1].value = 16777216
gg.setValues(S)
gg.addListItems(S)
gg.clearResults()
end

function E()
gg.clearResults()
gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
gg.refineNumber('3', gg.TYPE_DWORD)
Results = gg.getResults(1)
offset = 0xA4
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 16
s[1].freeze = true --true,false
s[1].name = "วิ่งไว"
s[1].value = 4
gg.setValues(s)
gg.addListItems(s)
end

function F()
gg.clearResults()
gg.searchNumber("0;0;-1;0;-1;10::21" , gg.TYPE_DWORD)
gg.refineNumber('-1',gg.TYPE_DWORD)
t = gg.getResults(100)
for i, v in ipairs(t) do
	t[i].value = '0'
	t[i].freeze = true
	t[i].name = "พูดคุยอัตโนมัติ"
gg.addListItems(t)
gg.clearResults()
end
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
NUX=-1
end


function ATK()
gg.clearResults()
gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
gg.refineNumber('3', gg.TYPE_DWORD)
Results = gg.getResults(1)
qa = gg.choice({
	"ตีรัว0",
	"ตีรัว150",
	"ตีรัว300",
	"ปิด",
},nil,"ยิ่งเลขเยอะยิ่งช้า")
if qa == nil then else
if qa==1 then ATK0() end
if qa==2 then ATK150() end
if qa==3 then ATK300() end
if qa==4 then PID() end
end
NUX=-1
end


function PID()
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = false
s[1].freezeFrom = 0
s[1].freezeTo = 300
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
end


function ATK300()
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 300
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
end

function ATK150()
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freezeType = gg.FREEZE_IN_RANGE
s[1].freeze = true
s[1].freezeFrom = 0
s[1].freezeTo = 150
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
end


function ATK0()
gg.alert('ใช้กำไลจาวารี')
offset = 0x8C
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true --true,false
s[1].name = "ตีเร็ว1"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
offset = 0xA8
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true --true,false
s[1].name = "ตีเร็ว2"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
end

function osexit()
print(os.date([[ขอบคุณที่ใช้งานสคริปต์ !

%A %d %B %Y
%H:%M%p %Z %z
███████████
██▄▄████▄▄█
█   ▼▼▼▼▼▼
█
█
█
█
█    ▲▲▲▲▲▲
███████████
__███____███___
]]))
print ("เพจ:Iruna Online Mod")
print ("Facebook:ชลธาร นิลเลิศ" )



    os.exit()
end





while true do
if gg.isVisible(true) then
NUX=1
gg.setVisible(false)
end
if NUX==1 then main()
NUX=-1
end
end



















