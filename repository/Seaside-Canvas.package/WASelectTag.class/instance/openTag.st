private
openTag
	self hasCallback ifFalse: [ self attributes at: 'name' ifAbsentPut: [ self dispatchCallback ] ].
	super openTag