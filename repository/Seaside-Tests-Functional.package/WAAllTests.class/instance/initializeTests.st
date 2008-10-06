initialize-release
initializeTests
	classes := SortedCollection sortBlock: [ :a :b | a name < b name ].
	WAFunctionalTest allSubclassesDo: [ :each | classes add: each ].
	WAFunctionalTaskTest allSubclassesDo: [ :each | classes add: each ].
	current := WAValueHolder with: classes first new