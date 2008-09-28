rendering-stack
renderObject: anObject labelled: aString on: html
	html definitionTerm: [
		html anchor
			callback: [ (WAInspectorPlugin on: anObject for: self) execute ];
			with: aString ].
	html definitionData: (self safePrintString: anObject)