private
exptectString: aString
	self current = aString first
		ifFalse: [ self syntaxError: 'expected ', aString ].
	2 to: aString size do: [ :index |
		self next ~= (aString at: index)
			ifTrue: [ self syntaxError: 'expected ', aString ] ]