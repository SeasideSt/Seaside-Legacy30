private
asFilename: aSelector
	| dotIndex extension |
	dotIndex := self lastUpperCaseIndexIn: aSelector.
	dotIndex = 0
		"convert Symbol to String"
		ifTrue: [ ^ aSelector toString ].
	extension := (aSelector last: aSelector size - dotIndex + 1) asLowercase.
	^ (aSelector first: dotIndex - 1), '.', extension