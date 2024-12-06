--- crow lfo test
--
-- for some reason i have
-- to manually activate
-- output 4

function init()
  crow.output[3].action = "lfo()"
  crow.output[3]()
  crow.output[4].action = "lfo()"
  crow.output[4]()
  redraw()
end

function redraw()
  screen.level(15)
  screen.aa(0)
  screen.clear()
  screen.move(60,30)
  screen.text_center('LFO Test')
  screen.update()
end

function key(n,z)
  if n==3 and z==1 then
    crow.output[4].action = "lfo()"
    crow.output[4]()
  end
  redraw()
end
