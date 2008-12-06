accessing
arguments
	| arguments |
	arguments := OrderedCollection with: self javascriptUrl.
	self options
		at: 'complete'
		ifPresent: [ :value | arguments add: value ].
	self options
		at: 'dataType'
		ifPresent: [ :value | arguments add: value ].
	^ arguments