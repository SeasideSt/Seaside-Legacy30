private
shouldRedirect: aRequest
	^ (aRequest isGet and: [ aRequest fields includesKey: '_n' ]) not