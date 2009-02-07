old
fileClass
	^streamUploads
		ifTrue: [ WATemporaryFile ]
		ifFalse: [ WAFile ]