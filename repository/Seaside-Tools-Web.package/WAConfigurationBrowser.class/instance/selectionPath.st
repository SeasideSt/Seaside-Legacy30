private
selectionPath
	selection ifNil: [ ^ '/' ].
	^ selection url greaseString