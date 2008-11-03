public
keyFor: aRequestHandler ifAbsent: aBlock
	^ (self cache keyFor: aRequestHandler) ifNil: aBlock