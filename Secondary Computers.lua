mon = peripheral.wrap("back")
 
function online(event)
        event, a, b, c = os.pullEvent("rednet_message")
        if a == 202 then
                id = os.getComputerID()
                rednet.send(202, id)
 end
end
 
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
 
    if a == "back" and redstone.getOutput("right") == true then
        redstone.setOutput("right", false)
        load()
    end
end
 
function recieve()
    event, a, b, c = os.pullEvent("rednet_message")
 
    if a == 202 and b == "toggle" then
        redstone.setOutput("right", true)
        mon.clear()
        mon.setBackgroundColor(colors.red)
        mon.clear()
        mon.setCursorPos(1, 3)
        mon.write("Working")
    end
 
    event, a, b, c = os.pullEvent("rednet_message")
 
    if a == 202 and b == "toggle" and redstone.getOutput("right") == true then
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
    os.sleep(.1)
    recieve()
end
 
while true do
    if rednet.isOpen() == false and redstone.getOutput("right") == true then
        rednet.open("left")
        redstone.setOutput("right", false)
        active()
    else
        redstone.setOutput("right", false)
        active()
  end
end
