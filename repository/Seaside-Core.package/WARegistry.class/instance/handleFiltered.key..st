private
handleFiltered: aRequestContext key: aString
	| handler |
	(handler := self cache at: aString) notNil
		ifTrue: [ handler handle: aRequestContext ]
		ifFalse: [ self handleExpiredRequest: aRequestContext ]