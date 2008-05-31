accessing-scripts
rememberLoadScripts: aBlock
	| result scripts |
	scripts := self loadScripts.
	self properties removeKey: #loadScripts.
	result := aBlock value.
	self properties at: #loadScripts put: scripts.
	^ result