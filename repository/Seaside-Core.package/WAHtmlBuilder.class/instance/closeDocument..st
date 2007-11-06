private
closeDocument: aDocument
	self fullDocument ifTrue: [
		documentRoot close: aDocument ]