testing
testKeysSortedSafely

	| dict sortedKeys index |
	dict := Dictionary new.
	1 to: 10 do: [:i | dict at: i put: Object new].
	1 to: 10 do: [:i | dict at: i printString put: Object new].
	1 to: 10 do: [:i | dict at: (Array with: i) put: Object new].
	1 to: 10 do: [:i | dict at: Object new put: Object new].
	sortedKeys := dict keysSortedSafely asArray.
	index := sortedKeys indexOf: #(1).
	self assert: (sortedKeys at: index + 9) = #(9).
	index := sortedKeys indexOf: '1'.
	self assert: (sortedKeys at: index + 9) = '9'.
	index := sortedKeys indexOf: 1.
	self assert: (sortedKeys at: index + 9) = 10.