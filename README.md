# Zone
Zone module kinda like ZonePlus but less features, but this one uses the new Roblox workspace apis.

How it works.

1. Put the src.lua in a module script and place is somewhere your script can access it. (I will do ReplicatedStorage for this example.)
2. Require the module.
```lua
local module = require(game:GetService("ReplicatedStorage").Zone)
```
3. Create a zone.
```lua
local Zone = module.new(workspace.Part)-->> BasePart.
```
4. Done! You now have access to all the api functions
```lua
Zone:GetPartsInZone() > <Table>

Zone:IsPartInZone(Part <BasePart>) > <Boolean>

Zone:IsPlayerInZone(Player <Player>) > <Boolean>
```
