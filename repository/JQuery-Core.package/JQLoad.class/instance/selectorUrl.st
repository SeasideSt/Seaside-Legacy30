accessing-urls
selectorUrl
	^ selector isNil
		ifTrue: [ self url ]
		ifFalse: [ self url seasideString , ' ' , selector seasideString ]