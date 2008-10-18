initialization
initializeDeprecatedSelectors
	| selectors |
	selectors := #( deprecatedApi deprecatedApi: ).
	deprecatedSelectors := Set new.
	Object allSubclassesDo: [ :class |
		class methodDictionary keysAndValuesDo: [ :selector :method |
			method literals do: [ :each |
				(selectors includes: each)
					ifTrue: [ deprecatedSelectors add: selector ] ] ] ].
	#( registerObjectForBacktracking: registerForBacktracking beSingle beMultiple beDependent beResizable showScrollbars showToolbar layout )
		do: [ :each | deprecatedSelectors add: each ].
	#( new text: renderDeprecatedOn: addLoadScript: )
		do: [ :each | deprecatedSelectors remove: each ifAbsent: [ ] ]