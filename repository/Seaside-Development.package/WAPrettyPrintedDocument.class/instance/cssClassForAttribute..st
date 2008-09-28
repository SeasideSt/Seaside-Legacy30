private
cssClassForAttribute: aString
	^ (self knownAttributes includes: aString)
		ifTrue: [ 'attribute-known' ]
		ifFalse: [ 'attribute-unknown' ]