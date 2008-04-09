accessing-scripts
loadScripts
	^ self properties
		at: #loadScripts
		ifAbsentPut: [ OrderedCollection new ]