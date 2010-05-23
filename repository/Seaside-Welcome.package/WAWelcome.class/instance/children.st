rendering
children
	example ifNil: [
		^ #()
		] ifNotNil: [
		^ Array with: example
		]
