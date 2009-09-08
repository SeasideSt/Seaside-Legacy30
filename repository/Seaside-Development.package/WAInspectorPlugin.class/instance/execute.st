actions
execute
	EnableSeasideTools
		ifTrue: [ self open: (WAInspector current on: self target) ]
		ifFalse: [ WAInspector current openNativeInspectorOn: self target ]