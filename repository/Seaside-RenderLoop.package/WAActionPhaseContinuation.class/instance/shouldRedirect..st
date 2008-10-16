as yet unclassified
shouldRedirect: aRequest
	^ (aRequest isGet and: [ aRequest fields includesKey: '_n' ]) not