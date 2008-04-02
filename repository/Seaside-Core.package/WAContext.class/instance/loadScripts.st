accessing-scripts
loadScripts
	^ properties
		at: #loadScripts
		ifAbsentPut: [ OrderedCollection new ]