private
basicBaseUrl
	^ self isRoot
		ifTrue: [ WAUrl new ]
		ifFalse: [ self parent urlFor: self ]