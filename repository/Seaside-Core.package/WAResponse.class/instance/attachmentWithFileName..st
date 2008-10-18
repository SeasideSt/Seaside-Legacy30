convenience
attachmentWithFileName: aString
	self headerAt: 'Content-Disposition' put: 'attachment; filename="', aString, '"'