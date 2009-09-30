testing
testGrow
	1 to: 100 do: [ :i |
		dictionary at: i put: i negated.
		self assert: dictionary size = i.
		[ :array :factor |
			self assert: array size = i.
			1 to: i do: [ :j | self assert: (array at: j) = (factor * j) ] ]
				value: dictionary keys value: 1;
				value: dictionary values value: -1 ]