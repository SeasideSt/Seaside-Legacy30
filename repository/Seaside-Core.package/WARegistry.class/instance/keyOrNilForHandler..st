deprecated
keyOrNilForHandler: aRequestHandler
	self 
		seasideDeprecatedApi: 'WARegistry>>#keyOrNilForHandler:'
		details: 'Use #keyFor:ifAbsent:.'.
	^ self keyFor: aRequestHandler ifAbsent: [ nil ]