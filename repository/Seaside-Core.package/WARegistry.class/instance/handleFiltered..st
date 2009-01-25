processing
handleFiltered: aRequestContext
	| key |
	key := self
		keyFromContext: aRequestContext
		ifAbsent: [ nil ].
	key isNil
		ifTrue: [ self handleDefaultRequest: aRequestContext ]
		ifFalse: [ self handleFiltered: aRequestContext key: key ]