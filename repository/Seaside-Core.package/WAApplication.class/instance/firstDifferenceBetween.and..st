private
firstDifferenceBetween: aFirstCollection and: aSecondCollection
	"returns the index of the first element that is different between aFirstCollection and aSecondCollection"

	| end |
	end := aFirstCollection size min: aSecondCollection size.
	1 to: end do: [ :index |
		(aFirstCollection at: index) ~= (aSecondCollection at: index)
			ifTrue: [ ^index - 1  ] ].
		
	^end