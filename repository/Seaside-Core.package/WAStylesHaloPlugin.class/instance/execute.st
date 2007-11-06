actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (WAViewer on: self target) ]
		ifFalse: [ Browser fullOnClass: self target class selector: #style ]