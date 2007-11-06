callbacks
on: selector of: anObject
	self callback: [ :value | anObject perform: selector asMutator with: value ]