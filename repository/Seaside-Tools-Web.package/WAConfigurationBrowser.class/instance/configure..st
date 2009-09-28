actions
configure: anEntryPoint
	| configEditor |
	self selection: anEntryPoint.
	self editor home.
	configEditor := anEntryPoint configurationComponent.
	^self call: configEditor.

