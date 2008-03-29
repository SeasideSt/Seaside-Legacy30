callbacks
on: selector of: anObject
	self value: (anObject perform: selector).
	self callback: [ :value | anObject perform: selector asMutator with: value ]