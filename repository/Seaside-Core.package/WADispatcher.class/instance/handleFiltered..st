handling
handleFiltered: aRequestContext
	| handlerName consumer |
	consumer := aRequestContext consumer.
	handlerName := consumer atEnd
		ifTrue: [ self defaultName ]
		ifFalse: [ consumer next ].
	self handleFiltered: aRequestContext named: handlerName