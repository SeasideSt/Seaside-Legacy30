public
keyFor: aRequestHandler ifAbsent: absentBlock
	^ (self cache keyFor: aRequestHandler) ifNil: [ absentBlock value ]