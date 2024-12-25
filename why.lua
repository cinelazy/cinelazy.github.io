local yieldLibrary = {}
local Utility = {}

function yieldLibrary:CreateLib(LibraryConfig)
	LibraryConfig = LibraryConfig or {}
	LibraryConfig.Name = LibraryConfig.Name or "Custom Admin Library"
	LibraryConfig.Version = LibraryConfig.Version or "v1.0.0"

	COREGUI = cloneref(game:GetService("CoreGui"))
	Players = cloneref(game:GetService("Players"))
	function test1()
    	print(LibraryConfig.Name)
    	print(LibraryConfig.Version)
	end
	return test()
end

return yieldLibrary
