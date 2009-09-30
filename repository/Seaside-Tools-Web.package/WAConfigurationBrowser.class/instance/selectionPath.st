private
selectionPath
	selection ifNil: [ ^ '/' ].
	^ selection baseUrl greaseString