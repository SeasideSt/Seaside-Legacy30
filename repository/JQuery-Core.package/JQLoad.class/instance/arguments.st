accessing
arguments
	| arguments |
	arguments := OrderedCollection with: self selectorUrl.
	self options
		at: 'data'
		ifPresent: [ :value | arguments add: value ].
	self options
		at: 'success'
		ifPresent: [ :value | arguments add: value ].
	^ arguments