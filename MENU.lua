gg.setRanges(gg.REGION_JAVA_HEAP)
gg.setVisible(false)

function MENU1()
    -- Menu
    m = gg.multiChoice({
    "1.Main",
    "2.LoopBoss",
    "3.แลกโอริ",
    "Exit",
    },nil,"Script By KaChini")
    if m == nil then else
    if m[1] then Main() end
    if m[2] then LoopBoss() end
    if m[3] then F() end 
    if m[4] then osexit() end       
	end
end

function Main()
        -- Main
    ma = gg.multiChoice({
      "1.Main(all)",
	  "2.ตีเร็ว",
	  "3.ซ่อนชื่อ",
      "Menu",
    },nil,"Main")
    if ma == nil then else
    if ma[1] then ma1() end
	if ma[2] then fa2() end
	if ma[3] then KBN() end
    if ma[4] then MENU1() end       
    end
end

function fa2()
A = gg.choice({"1.ตีเร็ว","2.ปิดตีเร็ว","Menu"}, nil, "Main")
if A == 1 then w3w1() end
if A == 2 then dww1() end
end

function TR()
    qa = gg.choice({
        "เมืองวีโบ",
		"เปิด autoSkip",
        "กลับ",
},nil,"เควส")
    if qa == nil then else
    if qa==1 then DR() end --กดข้ามอัตโนมัติ
	if qa==2 then skip() end
    if qa==3 then MENU1() end
end
end

function LoopBoss()
    -- Main
    ma = gg.multiChoice({
    "1.Loop(Boss)",
    "2.LoopStop(Sauro)",
    "Menu",
    },nil,"LoopBoss")
    if ma == nil then else
    if ma[1] then Re1() end
    if ma[2] then Re2() end
    if ma[3] then MENU1() end       
    end
end



----- Content
function ma1()

        -- ออโต้ข้าม
        gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
        gg.refineNumber("11001~20008", gg.TYPE_DWORD)
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
        gg.toast("🚀On AutoSkip Successfully")
        gg.clearResults()
        -- วื่งเร็ว       
        gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
        gg.refineNumber('3', gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = 0xA8
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 16
        s[1].freeze = true --true,false
        s[1].name = "วิ่งไว"
        s[1].value = 6
        gg.setValues(s)
        gg.addListItems(s)
        gg.toast("🚀On RunFast Successfully")               
        -- ดีเลย์สกิล  
        gg.clearResults()
        gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
        gg.refineNumber('3', gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = 0x70
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = true --true,false
        s[1].name = "ดีเลย์สกิล"
        s[1].value = 0
        gg.setValues(s)
        gg.addListItems(s)
        gg.toast("🚀On DelaySkill Successfully") 
        -- ดีเลย์ไอเทม 
        offset = 0x7C
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = true --true,false
        s[1].name = "ดีเลย์ไอเทม"
        s[1].value = 0
        gg.setValues(s)
        gg.addListItems(s) 
        gg.toast("🚀On DelayItems Successfully")   
        offset = 0xD8
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 16
        s[1].freeze = true --true,false
        s[1].name = "เดินทะลุ"
        s[1].value = 2
        gg.setValues(s)
        gg.addListItems(s) 
        gg.toast("🚀On WallHack Successfully") 
        -- เกิดทันที หรือเกิดไว
        gg.clearResults()
        gg.searchNumber('0;0;0;180;0;0::21',gg.TYPE_DWORD)
        gg.refineNumber('180',gg.TYPE_DWORD)
        s = gg.getResults(100)
        for i, v in ipairs(s) do
        s[i].value = '-1'
        s[i].freeze = true
        s[i].name = "เกิดทันที"
        gg.addListItems(s) 
        gg.toast("🚀On InstantฺBirth Successfully")
		gg.clearResults()
        -- ตีไกล เฉพาะอาวุธ
	end
end

function F()
    gg.clearResults()
	gg.toast("🚀On  Successfully")  
    gg.searchNumber("0;0;-1;0;-1;10::21" , gg.TYPE_DWORD)
    gg.refineNumber('-1',gg.TYPE_DWORD)
    t = gg.getResults(100)
    for i, v in ipairs(t) do
        t[i].value = '0'
        t[i].freeze = true
        t[i].name = "พูดคุยอัตโนมัติ"
    gg.addListItems(t)
    gg.clearResults()
	ma1()
end
end

function Re1()
        gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" ,gg.TYPE_DWORD)
        gg.refineNumber("11001~20008" , gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -100
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].name = "map info"
        s[1].value = 5300
        gg.setValues(s)
        gg.addListItems(s)
        offset = -88
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 19712
        gg.setValues(s)
        offset = -84
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value =  25600
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

        gg.sleep(3000)

        gg.clearResults()
        gg.searchNumber("1;5;6:9" , gg.TYPE_DWORD)
        gg.refineNumber("6", gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = 0
        S = {}
        S[1] = {}
        S[1].address = Results[1].address + offset
        S[1].flags = 4
        S[1].freeze = true
        S[1].name = "Sauro"
        S[1].value = 6
        gg.setValues(S)
        gg.addListItems(S)
        gg.clearResults()
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
        s[1].value = 5492
        gg.setValues(s)
        gg.addListItems(s)
        offset = -88
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 12544
        gg.setValues(s)
        offset = -84
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value =  17152
        gg.setValues(s)
        offset = 204
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 16842752
        gg.setValues(s)
        gg.sleep(3000)

        gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
        gg.refineNumber("11001~20008", gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -100
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = true
        s[1].name = "map info"
        s[1].value = 5300
        s[1].freezeType = gg.FREEZE_IN_RANGE
        s[1].freezeFrom = '5462'
        s[1].freezeTo = '5492'
        gg.setValues(s)
        gg.addListItems(s)      
end            

function Re2()
        gg.clearResults()
        gg.searchNumber("128;0;6;0:13" , gg.TYPE_DWORD)
        gg.refineNumber("6", gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = 0
        S = {}
        S[1] = {}
        S[1].address = Results[1].address + offset
        S[1].flags = 4
        S[1].freeze = false
        S[1].name = "Sauro"
        S[1].value = 6
        gg.setValues(S)
        gg.addListItems(S)
        gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
        gg.refineNumber("11001~20008", gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -100
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].name = "map info"
        s[1].value = 5300
        gg.setValues(s)
        gg.addListItems(s)
        offset = -88
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 19712
        gg.setValues(s)
        offset = -84
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value =  25600
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

function Fg1()
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
    s[1].value = 6760
    gg.setValues(s)
    gg.addListItems(s)
    offset = -88
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 48128
    gg.setValues(s)
    offset = -84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value =  13312
    gg.setValues(s)
    offset = 204
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 16842752
    gg.setValues(s)
    while true do
    t = gg.getListItems()
    for i, v in ipairs(t) do
         if v.value == 6702 then
    gg.sleep(5000)
    Results = gg.getResults(1)
    offset = -100
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "map info"
    s[1].value = 6760
    gg.setValues(s)
    gg.addListItems(s)
    offset = -88
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 48128
    gg.setValues(s)
    offset = -84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value =  13312
    gg.setValues(s)
    offset = 204
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 16842752
    gg.setValues(s)
    end
         if v.value == 700 then
    gg.sleep(5000)
    Results = gg.getResults(1)
    offset = -100
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "map info"
    s[1].value = 6760
    gg.setValues(s)
    gg.addListItems(s)
    offset = -88
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 48128
    gg.setValues(s)
    offset = -84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value =  13312
    gg.setValues(s)
    offset = 204
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 16842752
    gg.setValues(s)
    end
    end
    end
end

function F()
        -- ตีไกล เฉพาะอาวุธ
        gg.clearResults()
        gg.searchNumber('27019', gg.TYPE_DWORD)
        gg.refineNumber('27019', gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -0x80
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = true --true,false
        s[1].name = "ตีไกล"
        s[1].value = 15
        gg.setValues(s)
        gg.addListItems(s)
        gg.toast("🚀On Distance(Only weapon value 27019) Successfully") 
end

function w3w1()
gg.clearResults()
gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
gg.refineNumber('3', gg.TYPE_DWORD)
Results = gg.getResults(1)
offset = 0xAC
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = true --true,false
s[1].name = "ตีเร็ว1"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
offset = 0x90
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

function dww1()
gg.clearResults()
gg.searchNumber('3;1;-1::9', gg.TYPE_DWORD)
gg.refineNumber('3', gg.TYPE_DWORD)
Results = gg.getResults(1)
offset = 0xAC
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false --true,false
s[1].name = "ตีเร็ว1"
s[1].value = 0
gg.setValues(s)
gg.addListItems(s)
offset = 0x90
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

function KBN()
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
        gg.addListItems(offset)
        gg.toast("Hide Name")
        break
    end  
end
----- Content

----- Content 2
function DR()
	    gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" ,gg.TYPE_DWORD)
        gg.refineNumber("11001~20008" , gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -100
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].name = "map info"
        s[1].value = 5300
        gg.setValues(s)
        gg.addListItems(s)
        offset = -88
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 22784
        gg.setValues(s)
        offset = -84
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value =  57344
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
		gg.sleep(2000)
    gg.clearResults()        
    gg.searchNumber("128;1;5;6:13" , gg.TYPE_DWORD)
    gg.refineNumber('1',gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "NPC"
    s[1].value = 3
    gg.setValues(s)
    gg.addListItems(s)
	gg.sleep(1000)
	    gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" ,gg.TYPE_DWORD)
        gg.refineNumber("11001~20008" , gg.TYPE_DWORD)
        Results = gg.getResults(1)
        offset = -100
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].name = "map info"
        s[1].value = 5300
        gg.setValues(s)
        gg.addListItems(s)
        offset = -88
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value = 22784
        gg.setValues(s)
        offset = -84
        s = {}
        s[1] = {}
        s[1].address = Results[1].address + offset
        s[1].flags = 4
        s[1].freeze = false
        s[1].value =  59000
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
	gg.sleep(4000)
	if qa==1 then RE() end
end	

function RE()
    gg.clearResults()        
    gg.searchNumber("4;4;-1;0;-1;10::21" , gg.TYPE_DWORD)
    gg.refineNumber('-1',gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 8
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "ช่องพูดคุย"
    s[1].value = 1
    gg.setValues(s)
    gg.addListItems(s)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 1
    gg.setValues(s)
    gg.addListItems(s)
	gg.sleep(1000) 	
    gg.clearResults() 
    gg.searchNumber("0;0;1;0;1;10::21" , gg.TYPE_DWORD)
    gg.refineNumber('1',gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
	offset = 8
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = -1
    gg.setValues(s)
    gg.addListItems(s)
    offset = 8
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = -1
    gg.setValues(s)
    gg.addListItems(s)
	offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = -1
    gg.setValues(s)
    gg.addListItems(s)	 
	gg.clearResults()
    gg.searchNumber("128;3;6;5:13" , gg.TYPE_DWORD)
    gg.refineNumber('3',gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "NPC"
    s[1].value = 3
    gg.setValues(s)
    gg.addListItems(s)	
	offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "NPC"
    s[1].value = 1
    gg.setValues(s)
    gg.addListItems(s)	
    gg.clearResults() 
    gg.searchNumber("0;0;-1;0;-1;10::21" , gg.TYPE_DWORD)
    gg.refineNumber('-1',gg.TYPE_DWORD)
    Results = gg.getResults(1)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
	offset = 8
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = true
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
	gg.toast("🚀กด")
	gg.sleep(3000)
    offset = 0
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)
	offset = 8
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "พูดคุยอัตโนมัติ"
    s[1].value = 0
    gg.setValues(s)
    gg.addListItems(s)		
end

function skip()
        -- ออโต้ข้าม
        gg.clearResults()
        gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
        gg.refineNumber("11001~20008", gg.TYPE_DWORD)
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
        gg.toast("🚀On AutoSkip Successfully")
        gg.clearResults()
end
----- Content 2

----- Content 3

function osexit()
print(os.date([[ขอบคุณที่ใช้งานสคริปต์ !
%A %d %B %Y
%H:%M%p %Z %z
████████████
██▄▄████▄▄██

]]))
print ("Create By KaChini" )

os.exit() end

----- Footer
while true do
    if gg.isVisible(true) then
    KCN=1
    gg.setVisible(false)
    end
    if KCN==1 then MENU1()
    KCN=-1
    end
end