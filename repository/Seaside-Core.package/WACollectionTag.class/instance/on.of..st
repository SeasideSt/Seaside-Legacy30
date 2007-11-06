callbacks
on: aSelector of: anObject
	self selected: (anObject perform: aSelector).
	self callback: [ :value | anObject perform: aSelector asMutator with: value ]