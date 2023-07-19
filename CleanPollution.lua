local component = require("component")
local Pollution = component.proxy("9308c27b-aa36-4b27-b872-735aa8074168")
local Clean = component.proxy("232dad3c-9d7c-45df-8416-768069698694")
local p = Pollution.getSensorInformation()[2]
Clean.setWorkAllowed(false)
while true do
    p = Pollution.getSensorInformation()[2]
	print(p.."  OFF")
	if p >= "Current Pollution: 650000" then
	    Clean.setWorkAllowed(true)
		os.sleep(5)
		while true do
		    p = Pollution.getSensorInformation()[2]
			print(p.."  ON")
			if p <= "Current Pollution: 550000" then
			    Clean.setWorkAllowed(false)
			    break
			end
			os.sleep(5)
		end
	end
	os.sleep(5)
end