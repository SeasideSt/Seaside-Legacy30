as yet unclassified
shouldRedirect: aRequest
	^ aRequest isGet not or: [ (aRequest fields includesKey: '_n') not ]