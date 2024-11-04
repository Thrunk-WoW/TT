-- Create the main frame and assign the GameTooltip to it
HideTooltip = CreateFrame('Frame', 'HideTooltip', GameTooltip)

-- register for event
HideTooltip:RegisterEvent("ADDON_LOADED")
--Player enter world better than addon loaded??
-- hide on load
HideTooltip:SetScript("OnEvent", function()
    if event == "ADDON_LOADED" then
		UIErrorsFrame:Hide()
		HideTooltip:SetScript('OnShow', function() 
			GameTooltip:ClearAllPoints()
			GameTooltip:SetPoint("BOTTOMRIGHT",0,0)
		end
		)  
	end
end
)