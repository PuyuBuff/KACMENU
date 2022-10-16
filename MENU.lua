gg.setRanges(gg.REGION_JAVA_HEAP)

function MENU1()
    -- Menu
    m = gg.multiChoice({
    "1.Main",
    "2.LoopBoss",
    "Exit",
    },nil,"Script By KaChini")
    if m == nil then else
    if m[1] then Main() end
    if m[2] then LoopBoss() end
    if m[3] then osexit() end       
	end
end

function Main()
        -- Main
    ma = gg.multiChoice({
    "1.Main(all)",
    "Menu",
    },nil,"Main")
    if ma == nil then else
    if ma[1] then ma1() end
    if ma[2] then MENU1() end       
    end
end

function LoopBoss()
    -- Main

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
    ma = gg.multiChoice({
    "1.(Sauro)Loop",
    "2.(Sauro)LoopStop",
    "Menu",
    },nil,"LoopBoss")
    if ma == nil then else
    if ma[1] then Re1() end
    if ma[2] then Re2() end
    if ma[3] then MENU1() end       
    end
end

function ma1()

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
        -- ดีเลย์สกิล  
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

        -- ดีเลย์ไอเทม 
        Results = gg.getResults(1)		
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
		
		-- เดินทะลุ
        Results = gg.getResults(1)
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
		gg.clearResults()
	eww()
end
end

function eww()
gg.toast(" 2")
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
	pgt()
end

function pgt()
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

        break
    end  
	olrt()
end

function olrt()
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
	Main()	
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
