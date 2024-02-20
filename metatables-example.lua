local BuildingParts = {}
local automate = {__newindex = function(table,index,value)
	local nameTable = {__tostring = function(table) return index end}
	setmetatable(value,nameTable)
	rawset(table,index,value)
end}
setmetatable(BuildingParts,automate)
BuildingParts["Tiny Engine"] = {
	Category = "Engine",
	Class = "Engine",
	IconId = "6219814488",
	Price = 250,
	Description = "A really small engine",
	--BuildSound = PlaceSoundsFolder:WaitForChild("HardMetal"),
	Purchasable = true,
}

BuildingParts["Large Engine"] = {
	Category = "Engine",
	Class = "Engine",
	IconId = "6219814488",
	Price = 10000,
	Description = "A really big engine",
	--BuildSound = PlaceSoundsFolder:WaitForChild("HardMetal"),
	Purchasable = true,
}
print(BuildingParts["Tiny Engine"])--Tiny Engine
print(BuildingParts["Tiny Engine"].Price)--250
print(BuildingParts["Large Engine"])--Large Engine
