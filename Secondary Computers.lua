mon = peripheral.wrap("top")

if rednet.isOpen() == false then
		rednet.open("left")
	else
		active()
	end
end

function active()
	rednet.send(202, "I'm Online!")
	wait()
end

os.sleep(5)

function wait()
	mon.setBackgroundColor(colors.green)
	mon.clear() --Expecting Number error :|
	mon.setTextScale(1)
	mon.setCursorPos(2, 3)
	mon.write("Ready")
	touch()
end

function touch()
	if os.pullEvent("monitor_touch") then
		redstone.setOutput("top", 16)
		os.sleep(3)
		mon.clear()
		mon.setBackgroundColor(colors.red)
		mon.clear()
		mon.setCursorPos(1, 3)
		mon.write("Working")
	end
	if os.pullEvent("monitor_touch") then
		redstone.setOutput("top", 0)
		os.sleep(3)
		wait()
	end
end