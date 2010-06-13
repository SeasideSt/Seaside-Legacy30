private
selectionPath
	selection ifNil: [ ^ '/' ].
	^ selection url pathString