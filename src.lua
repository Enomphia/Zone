local Zone = {}
Zone.__index = Zone

function Zone.new(part: Part)
	return setmetatable(
		{
			_Zone = part
		},
		Zone
	)
end

function Zone:GetPartsInZone()
	return workspace:GetPartsInPart(self._Zone)
end

function Zone:IsPartInZone(part: Part)
	return (table.find(workspace:GetPartsInPart(self._Zone), part) and true or false)
end

function Zone:IsPlayerInZone(player: Player)
	return self:IsPartInZone(player.Character.HumanoidRootPart)
end

return Zone
