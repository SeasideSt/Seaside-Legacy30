as yet unclassified
basicSystemConfiguration
	^ WAConfigurationMock new
		description: [ :config | (config string: #a) default: #default ];
		yourself