private
cssClassFor: aString
	^ (self knownTags includes: aString)
		ifTrue: [ 'tag-known' ]
		ifFalse: [ 'tag-unknown' ]