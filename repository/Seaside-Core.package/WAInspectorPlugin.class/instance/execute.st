actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (WAInspector on: self target) ]
		ifFalse: [ self target inspect ]