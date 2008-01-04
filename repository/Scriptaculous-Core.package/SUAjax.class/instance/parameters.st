parameters
parameters
	"Answer the request parameters of the reciever."

	^ (self options at: 'parameters' ifAbsentPut: [ SUJoin join: OrderedCollection new with: '&' ])
		collection