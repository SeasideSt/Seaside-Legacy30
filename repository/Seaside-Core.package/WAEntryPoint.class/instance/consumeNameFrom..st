private
consumeNameFrom: aRequestContext
	"Consume the name of this entry point from the request path."
	| consumer |
	consumer := aRequestContext consumer.
	consumer atEnd
		ifFalse: [ consumer next ].