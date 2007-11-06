accessing-headers
headerAt: key put: value
	headers ifNil: [ headers := OrderedCollection new ].
	headers add: (Association key: key value: value)