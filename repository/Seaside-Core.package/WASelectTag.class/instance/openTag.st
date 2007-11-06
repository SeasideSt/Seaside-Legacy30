private
openTag
	self attributes at: 'name' ifAbsentPut: [ self dispatchCallback ].
	super openTag