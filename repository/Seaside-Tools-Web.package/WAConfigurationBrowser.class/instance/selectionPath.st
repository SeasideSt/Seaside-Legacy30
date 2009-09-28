private
selectionPath
	selection ifNil: [^'/'].
	^selection baseUrl seasideString.