mon = peripheral.wrap("top")

function touch()
	event, a, b, c = os.pullEvent("monitor_touch")

	if a == front	redstone.setOutput("top", true)
		os.sleep(3)
		mon.clear()
		mon.setBackgroundColor(colors.red)
		mon.clear()
		mon.setCursorPos(1, 3)
		mon.write("Working")
	end
	event, a, b, c = os.pullEvent("monitor_touch")

	if a == front then
		redstone.setOutput("top", false)
		os.sleep(3)
		load()
	end
end

function active()
	rednet.send(202, "I'm Online!")
	load()
end

function load()
	sleep(5)
	mon.clear()
	mon.setBackgroundColor(colors.green)
	mon.clear()
	mon.setTextScale(1)
	mon.setCursorPos(2, 3)
	mon.write("Ready")
	touch()
end
if rednet.isOpen() == false then
		rednet.open("left")
		active()
	else
		active()
end





