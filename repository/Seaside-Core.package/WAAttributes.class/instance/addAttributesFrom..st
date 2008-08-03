attribute creation
addAttributesFrom: aConfiguration
	| oldConfig |
	oldConfig := configuration.
	[configuration := aConfiguration.
	aConfiguration canDefineAttributes ifTrue: [ configuration addAttributes: self ]]
		ensure: [ configuration := oldConfig ].