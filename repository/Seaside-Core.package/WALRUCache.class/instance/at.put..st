accessing
at: aKey put: aValue
	| removals |
	table at: aKey put: aValue.
	ageTable at: aValue put: 0.
	removals := OrderedCollection new.
	ageTable associationsDo: [ :assoc |
		assoc value > max
			ifTrue: [ removals add: assoc key ]
			ifFalse: [ assoc value: assoc value + 1 ] ].
	removals do: [ :each | self remove: each ]