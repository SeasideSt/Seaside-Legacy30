rendering
renderConfigurationOn: html
	html heading level: 1; with: 'Handler Configuration'.
	self handler configuration isNil ifFalse: [ html render: configurationEditor ]