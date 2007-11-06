private
asFilename: aSelector
	| dotIndex extension |
	dotIndex := self lastUpperCaseIndexIn: aSelector.
	dotIndex = 0
		"#asString is ok here because aSelector is a Symbol and #displayString would return the hash character as well"
		ifTrue: [ ^ aSelector asString ].
	extension := (aSelector last: aSelector size - dotIndex + 1) asLowercase.
	^ (aSelector first: dotIndex - 1), '.', extension