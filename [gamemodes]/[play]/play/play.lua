local function onResourceStartPlay()
	resetMapInfo()
	createVehicles()

	local playersTable = getElementsByType("player")

	for playerID = 1, #playersTable do
		playSpawnPlayer(playersTable[playerID])
	end

	addEventHandler("onPlayerJoin", root, onPlayerJoin)
	addEventHandler("onPlayerWasted", root, onPlayerWasted)
	addEventHandler("onPlayerQuit", root, onPlayerQuit)
	addEventHandler("onVehicleEnter", resourceRoot, onVehicleEnter)
	addEventHandler("onVehicleExit", resourceRoot, onVehicleExit)
	addEventHandler("onElementDestroy", resourceRoot, onVehicleElementDestroy)
end
addEventHandler("onResourceStart", resourceRoot, onResourceStartPlay)
