testing
testIfTrueIfFalse
	self assert: (false ifFalse: [#false]) = #false.
	self assert: (false ifTrue: [ #true ]) == nil.
	self assert: (true ifTrue: [#true]) = #true.
	self assert: (true ifFalse: [ #false ]) == nil.
	self assert: (true ifTrue: [#true] ifFalse: [#false]) = #true.
	self assert: (false ifTrue: [#true] ifFalse: [#false]) = #false.
	self assert: (true ifFalse: [#false] ifTrue: [#true]) = #true.
	self assert: (false ifFalse: [#false] ifTrue: [#true]) = #false