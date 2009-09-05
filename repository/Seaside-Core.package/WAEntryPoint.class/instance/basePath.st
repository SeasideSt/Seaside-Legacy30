accessing
basePath
	^ self parent isNil
		ifTrue: [ '/' ]
		ifFalse: [
			String streamContents: [ :stream |
			 self path do: [ :each |
				stream nextPut: $/.
				stream nextPutAll: each ] ] ]