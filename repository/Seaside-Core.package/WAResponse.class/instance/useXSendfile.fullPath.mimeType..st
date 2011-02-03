convenience-headers
useXSendfile: filename fullPath: fullPath mimeType: aMimeType
	self headerAt: 'X-Sendfile' put: fullPath.
	self contentType: aMimeType.
	self attachmentWithFileName: filename
