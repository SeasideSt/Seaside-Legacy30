tests
testToDoClosures
	"#to:do: may be optimized and VAST currently has problems with closures
	in this case. We would prefer to use the optimized version than than
	(1 to: 5) do: [ ... ] so this test is here to hilight the problem at
	least unless the platforms tell us the problem is not fixable."
	
	| collection |
	collection := OrderedCollection new.
	1 to: 5 do: [ :ea | collection add: [ea] fixCallbackTemps ].
	self assert: (collection collect: [ :ea | ea value ]) asArray = #(1 2 3 4 5)