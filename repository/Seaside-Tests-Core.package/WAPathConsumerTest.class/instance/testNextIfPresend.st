testing
testNextIfPresend
	| evaluated |
	evaluated := false.
	consumer nextIfPresentDo: [ :next |
		 self assert: consumer next = 'tweets'.
		evaluated := true ].
	self assert: evaluated.
	
	evaluated := false.
	consumer nextIfPresentDo: [ :next |
		 self assert: consumer next = 'kentbeck'.
		evaluated := true ].
	self assert: evaluated.
	
	evaluated := false.
	consumer nextIfPresentDo: [ :next |
		evaluated := true ].
	self deny: evaluated