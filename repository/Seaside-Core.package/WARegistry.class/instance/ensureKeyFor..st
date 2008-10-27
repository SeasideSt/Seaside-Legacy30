public
ensureKeyFor: aRequestHandler
	^ self keyFor: aRequestHandler ifAbsent: [ self register: aRequestHandler ]