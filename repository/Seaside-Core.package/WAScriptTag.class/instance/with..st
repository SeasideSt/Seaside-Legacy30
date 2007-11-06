public
with: aString
	self attributes at: 'type' ifAbsentPut: [ 'text/javascript' ].
	super with: [ self document nextPutAll: aString displayString ]