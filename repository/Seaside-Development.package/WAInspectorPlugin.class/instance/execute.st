actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (SeasidePlatformSupport seasideInspectorClass on: self target) ]
		ifFalse: [ self target inspect ]