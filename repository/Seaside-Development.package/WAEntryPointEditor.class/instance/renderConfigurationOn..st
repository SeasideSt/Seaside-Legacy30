rendering
renderConfigurationOn: html
	handler configuration isNil ifFalse: [
		html render: configurationEditor ]