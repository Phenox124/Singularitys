mon = peripheral.wrap("back")
 
function touch()
        event, a, b, c = os.pullEvent("monitor_touch")
 
        if a == "back" then
        redstone.setOutput("right", true)
                mon.clear()
                mon.setBackgroundColor(colors.red)
                mon.clear()
                mon.setCursorPos(1, 3)
                mon.write("Working")
        end
        event, a, b, c = os.pullEvent("monitor_touch")
 
        if a == "back" and redstone.getInput("right") == true then
                redstone.setOutput("right", false)
                load()
        end
end
 
function active()
        rednet.send(202, "I'm Online!")
        load()
end
 
function load()
        mon.setBackgroundColor(colors.lime)
        mon.clear()
        mon.setTextScale(1)
        mon.setCursorPos(2, 3)
        mon.write("Ready")
        touch()
end
 
while true do
  if rednet.isOpen() == false then
                  rednet.open("left")
                  active()
         else
                  active()
  end
end
