accessing
pluralize: aString
	| string |
	string := aString asLowercase.
	Uninflected do: [ :each |
		(string endsWith: each)
			ifTrue: [ ^ aString ] ].
	InflectionRules do: [ :rule |
		(string endsWith: rule first)
			ifTrue: [ ^ (aString allButLast: rule third) , rule second ] ].
	^ aString , 's'