accessing
at: aKey append: aValue separator: aString 
	"Append aValue to the attribute aKey. If already present, concatenate it with aString. Ignore the request if aValue is nil."
	aValue ifNil: [ ^ self at: aKey ].
	^ self 
		at: aKey
		put: (String streamContents: 
			[ :stream | 
			self 
				at: aKey
				ifPresent: 
					[ :value | 
					stream nextPutAll: value seasideString.
					stream nextPutAll: aString ].
			stream nextPutAll: aValue seasideString ])