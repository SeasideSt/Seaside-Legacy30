rendering
renderContentOn: html
	super renderContentOn: html.
	self renderSettingsOn: html.
	self renderStatisticsOn: html