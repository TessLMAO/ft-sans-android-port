function onCreate()
    makeLuaSprite('Bg2', 'sans/BackGround2', -1700, -1600)
      scaleObject('Bg2', 2.0, 2.0)
      setScrollFactor('Bg2', 0.9, 0.9)
      addLuaSprite('Bg2', false)
      setProperty('Bg2.visible', true)
      
    makeAnimatedLuaSprite('Sans?', 'sans/Leandro', 1850, 280)
      addAnimationByPrefix('Sans?', 'dance', 'Leandro', 20, true)
      objectPlayAnimation('Sans?', false)
      scaleLuaSprite('Sans?', 1.1, 1.1)
      addLuaSprite('Sans?', false)
      setProperty('Sans?.visible', true)
      
    makeLuaSprite('Cabin', 'sans/cabana', 1000, -100)
      scaleObject('Cabin', 1.5, 1.5)
      setScrollFactor('Cabin', 0.9, 0.9)
      addLuaSprite('Cabin', false)
      setProperty('Cabin.visible', true)
      
    makeLuaSprite('Trees', 'sans/trees', -1700, -1600)
      scaleObject('Trees', 1.8, 1.8)
      setScrollFactor('Trees', 0.9, 0.9)
      addLuaSprite('Trees', false)
      setProperty('Trees.visible', true)
end

function onStepHit()
    if curStep == 370 then
        makeLuaSprite('Jumpscare', 'sans/Prunsel_Scary_Screen', -50, -50)
        scaleLuaSprite('Jumpscare', 0.9, 0.9)
        setObjectCamera('Jumpscare', 'other')
        setScrollFactor('Jumpscare', 0.9, 0.9)
        addLuaSprite('Jumpscare', true)
        
    elseif curStep == 490 then
       setProperty('Jumpscare.visible', false)
       
    elseif curStep == 850 then
       setProperty('Jumpscare.visible', true)
    end
end