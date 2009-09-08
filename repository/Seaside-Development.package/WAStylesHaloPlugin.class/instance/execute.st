actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (WAPluggableTool on: (WAViewer on: self target)) ]
		ifFalse: [ Browser fullOnClass: self target class selector: #style ]