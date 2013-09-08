testing
isBinary
	"answers whether the contents of a document of the receiving mime type are binary"
	| subTypes |
	self main = 'text' ifTrue: [ ^ false ].
	self main = 'application'
		ifTrue: [
			"application/json is text"
			self sub = 'json' ifTrue: [ ^ false ] ]
		ifFalse: [ ^ true ].
	subTypes := self sub subStrings: '+'.
	^ subTypes noneSatisfy: [ :each | 
		"application/x-javascript and application/xml are text"
		#('x-javascript' 'xml') includes: each ]