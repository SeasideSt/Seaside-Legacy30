private
consumeNameFrom: aRequestContext
	"Consume the name of this entry point from the request path."
	| consumer |
	self name isEmptyOrNil ifFalse: [
		consumer := aRequestContext consumer.
		(consumer atEnd not and: [ consumer peek = self name ])
			ifTrue: [ consumer next ]
			ifFalse: [ aRequestContext responseGenerator notFound; respond ] ]