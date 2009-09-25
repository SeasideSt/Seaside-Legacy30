actions
configure: anEntryPoint
	| configEditor |
	self updatePropertiesCache.
	self selection: anEntryPoint.
	self editor home.
	configEditor := anEntryPoint configurationComponent.
	configEditor setProperties: propertiesCache.
	^self call: configEditor.

