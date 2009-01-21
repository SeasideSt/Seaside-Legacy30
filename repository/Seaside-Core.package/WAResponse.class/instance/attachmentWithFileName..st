convenience-headers
attachmentWithFileName: aString
	(aString isNil or: [ aString isEmpty ])
		ifFalse: [ self headerAt: 'Content-Disposition' put: 'attachment; filename="' , aString , '"' ]