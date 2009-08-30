actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (WABrowser fullOnClass: self target class) ]
		ifFalse: [ Browser fullOnClass: self target class ]