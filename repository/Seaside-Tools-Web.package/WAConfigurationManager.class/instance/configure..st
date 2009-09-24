actions
configure: anEntryPoint
	| |
	self selection: anEntryPoint.
	self editor home.
	^self call: (anEntryPoint configurationComponent).
