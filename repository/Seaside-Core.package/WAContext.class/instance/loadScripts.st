accessing
loadScripts
	^properties
		at: #loadScripts
		ifAbsentPut: [ OrderedCollection new ]