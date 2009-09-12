running
checkMethod: aContext 
	aContext parseTree nodesDo: [ :node |
		(node isMessage
			and: [ node isPatternNode not
			and: [ node selector = #in: ] ]) ifTrue: [
				^ result addClass: aContext selectedClass selector: aContext selector ] ]