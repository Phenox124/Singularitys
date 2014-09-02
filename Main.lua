mon = peripheral.wrap("top")

function main()
if rednet.isOpen() == false then
	rednet.open("left")
	singu1()
else
	singu1()
end
end

function singu1(error, event, a, b, c)
	error = "Quantum Link 1 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	rednet.receive(203, id) --1
	if a == 203 then
		singu2()
	else
		mon.term.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write(error)
end

function singu2(error, event, a, b, c)
	rednet.receive(204, id) --2
	error = "Quantum Link 2 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 204 then
		singu3()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu3(error, event, a, b, c)
	rednet.receive(205, id) --3
	error = "Quantum Link 3 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 205 then
		singu4()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu4(error, event, a, b, c)
	rednet.receive(206, id) --4
	error = "Quantum Link 4 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 206 then
		singu5()
	else
		mon.setBackgroundColo7(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu5(error, event, a, b, c)
	rednet.receive(207, id) --5	
	error = "Quantum Link 5 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 207 then
		singu6()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu6(error, event, a, b, c)
	rednet.receive(209, id) --6
	error = "Quantum Link 6 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 209 then
		singu7()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu7(error, event, a, b, c)
	rednet.receive(210, id) --7
	error = "Quantum Link 7 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 210 then
		singu8()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu8(error, event, a, b, c)
	rednet.receive(211, id) --8
	error = "Quantum Link 8 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 211 then
		singu9()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu9(error, event, a, b, c)
	rednet.receive(212, id) --9
	error = "Quantum Link 9 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 212 then
		singu10()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function singu10(error, event, a, b, c)
	rednet.receive(213, id) --0
	error = "Quantum Link 10 is offline!"
	event, a, b, c = os.pullEvent("rednet_message")
	if a == 213 then
		online()
	else
		mon.setBackgroundColor(colors.red)
		mon.setTextColor(colors.yellow)
		mon.clear()
		mon.term.setCursorPos(1, 1)
		mon.write("Error: "..error)
end

function online(online)
	online = "System is operational"
	mon.setBackgroundColor(colors.lime)
	mon.setCursorPos(1, 1)
	mon.clear()
	mon.write(oneline)

end