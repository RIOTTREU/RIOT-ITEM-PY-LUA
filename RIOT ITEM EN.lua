function TH()
    ss = gg.choice({
        'Weapon',
        'Body Fashion',
        'Decorations',
        'Ring',
        'Back'
    },nil,[[DEVELOPER : RIOT]])
    if ss == nil then
    else
        if ss == 1 then
            SWN()
        end
        if ss == 2 then
            STN()
        end
        if ss == 3 then
            SUN()
        end
        if ss == 4 then
            SRR
        end
        if ss == 5 then
            exit()
        end
    end
end

function SWN()
    t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function STN()
    t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function SUN()
    t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function SRR()
    t = gg.makeRequest('--').content if t then pcall(load(t)) end
end

function exit()
    t = gg.makeRequest('https://raw.githubusercontent.com/RIOTTREU/RIOT-ITEM-PY-LUA/main/RIOT%20ITEM%20Login.lua').content if t then pcall(load(t)) end
end

while true do
    if gg.isVisible(true) then
      gg.setVisible(false)
      TH()
    end
end
