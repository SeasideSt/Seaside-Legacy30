handling
handleFiltered: aRequestContext
	| handlerName consumer |
	consumer := aRequestContext consumer.
	handlerName := consumer atEnd
		ifTrue: [ self defaultName ]
		ifFalse: [
			self name isEmptyOrNil
				ifTrue: [ consumer peek ]
				ifFalse: [
					| peek |
					peek := consumer peek.
					peek = self name
						ifTrue: [
							consumer next.
							consumer atEnd
								ifTrue: [ self defaultName ]
								ifFalse: [ consumer peek ] ]
						ifFalse: [ self defaultName ] ] ].
	self handleFiltered: aRequestContext named: handlerName