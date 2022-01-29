local drain = 0;
local angleshit = 1;
local anglevar = 1;

local xx = 220;
local yy = 510;
local xx2 = 475;
local yy2 = 400;
local ofs = 45;
local followchars = true;
local del = 0;
local del2 = 0;

function noteMiss(id, noteData, noteType, isSustainNote)
    if noteType == 'Warning' then
        triggerEvent('Play Animation','gun','GF')
        drain = drain + 0.0025
    end
end

function onStepHit()
    health = getProperty('health')
    setProperty('health', health - drain)

        if getProperty('health') < 0.05 then
        setProperty('health', 0.05);
    end
end

function onUpdate()

    if del > 0 then
        del = del - 1
    end
    if del2 > 0 then
        del2 = del2 - 1
    end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.9)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.6)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end
    function goodNoteHit(id, noteData, noteType, isSustainNote)
            if noteType == 'Warning' then
                        triggerEvent('Play Animation','gun','GF')
                        triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.025')
    end
end