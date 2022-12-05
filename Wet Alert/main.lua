function init()
	hasBeenWet = false
end

function tick()
	local playerTransform = GetPlayerTransform()
	local wet = IsPointInWater(playerTransform.pos)
	
	if (wet == true and hasBeenWet == false)
	then
		hasBeenWet = true
	end
end

function draw()
	UiFont("bold.ttf", 24)
	
	UiTranslate(100, 100)
	UiText("Wet Alert")
	
	UiFont("regular.ttf", 20)
	UiTranslate(0, 20)
	
	local statusText, statusImage
	if (hasBeenWet)
	then
		statusText = "Got wet"
		statusImage = "x-mark.png"
	else
		statusText = "Still dry"
		statusImage = "check-mark.png"
	end
	
	local statusWidth
	statusWidth = UiText(statusText)
	
	UiTranslate(statusWidth, -15)
	UiImage(statusImage)
end
