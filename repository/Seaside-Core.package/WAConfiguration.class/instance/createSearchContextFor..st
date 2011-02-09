attributes-private
createSearchContextFor: aSymbol 
	| context |
	context := WAAttributeSearchContext key: aSymbol target: self.
	context attribute isNil ifTrue: [ WAAttributeNotFound signalWithKey: aSymbol ].
	^ context