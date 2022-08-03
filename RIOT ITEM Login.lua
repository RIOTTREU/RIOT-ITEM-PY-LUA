RIOT = -1
function HOME()
    py = gg.choice({
        'เมนูภาษาไทย',
        'English menu',
        '[ออก]/[exit]'
    },nil,"DEVELOPER : RIOT\nกรุณาเลือกภาษา\nPlease select a language")
    if py == nil then
    else 
        if py == 1 then TH()
        end
        if py == 2 then EN()
        end
        if py == 3 then
            EXIT()
        end
    end
end

--หน้าเลือกภาษา
--ภาษาTH/EN
--ฟังชั้นอาวุธจะแยกออกอีกทีคือ [ดาบ/ธนู/กงเล็บ/อาวุธปา/สนับมือ]  / {แยกออกเป็นพื้นที่(หมายถึงEP)}
---ฟังชั้นชุด [มันก็มีอยู่แค่นั้นแหละ] / {แยกออกเป็นพื้นที่ (หมายถึงEP)}
---ฟังชั้นเสริม [มันก็มีอยู่แค่นั้นแหละ] / {แยกออกเป็นพื้นที่ (หมายถึงEP)}
--จบการทำงาน

function TH()
  t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function EN()
  t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function EXIT()
  gg.skipRestoreState()
  gg.setVisible(true)
  os.exit()
end
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    HOME()
  end
end