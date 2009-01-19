generation
expiredKey
	| url |
	self request isXmlHttpRequest
		ifTrue: [ ^ self forbidden ].
	url := WAUrl new.
	url addAllToPath: self request url path.
	url takeServerParametersFromRequest: self request.
	self request isGet ifTrue: [
		self request fields keysAndValuesDo: [ :key :value |
			(url isSeasideField: key) 
				ifFalse: [ url addParameter: key value: value ] ] ].
	self response redirectTo: url