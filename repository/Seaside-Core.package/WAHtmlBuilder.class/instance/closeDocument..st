private
closeDocument: aDocument
	self fullDocument ifTrue: [ aDocument close: documentRoot ]