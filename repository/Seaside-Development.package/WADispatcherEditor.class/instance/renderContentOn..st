rendering
renderContentOn: html
	super renderContentOn: html.
	self renderSettingsOn: html.
	html paragraph: [
		html anchor
			callback: [ self call: self handler configuration configurationComponent ];
			with: 'edit dispatcher configuration' ].
	self renderConfigurationsOn: html.
	self renderStatisticsOn: html