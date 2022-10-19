-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------
local registeredStashes = {}

function GenerateText(num) -- Thnx Linden
	local str
	repeat str = {}
		for i = 1, num do str[i] = string.char(math.random(65, 90)) end
		str = table.concat(str)
	until str ~= 'POL' and str ~= 'EMS'
	return str
end

exports('GenerateText', GenerateText)

function GenerateSerial(text) -- Thnx Again
	if text and text:len() > 3 then
		return text
	end
	return ('%s%s%s'):format(math.random(100000,999999), text == nil and GenerateText(3) or text, math.random(100000,999999))
end

exports('GenerateSerial', GenerateSerial)

RegisterServerEvent('wasabi_backpack:openBackpack')
AddEventHandler('wasabi_backpack:openBackpack', function(identifier)
    if not registeredStashes[identifier] then
        exports.ox_inventory:RegisterStash('bag_'..identifier, 'Backpack', Config.BackpackStorage.slots, Config.BackpackStorage.weight, false)
        registeredStashes[identifier] = true
    end
end)