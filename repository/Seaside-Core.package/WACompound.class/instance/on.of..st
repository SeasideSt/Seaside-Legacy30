callbacks
on: selector of: anObject
	self value: (anObject perform: selector).
	self callback: [ :date | anObject perform: selector asMutator with: date ]