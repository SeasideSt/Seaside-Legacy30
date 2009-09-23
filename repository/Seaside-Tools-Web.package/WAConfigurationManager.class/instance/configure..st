actions
configure: anEntryPoint
	| |
	self selection: anEntryPoint.
	self editor home; call: (anEntryPoint configuration configurationComponent).
