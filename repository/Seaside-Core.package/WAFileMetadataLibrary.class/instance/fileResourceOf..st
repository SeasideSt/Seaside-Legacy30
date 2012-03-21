private
fileResourceOf: aSelector
	^ (self class canPerform: aSelector)
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ WAFileLibraryResource emptyInstance ]