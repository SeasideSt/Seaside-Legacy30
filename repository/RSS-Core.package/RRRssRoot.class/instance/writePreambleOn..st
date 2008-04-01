writing
writePreambleOn: aDocument
	aDocument nextPutAll: '<?xml version="1.0" encoding="'.
	aDocument nextPutAll: self charSet.
	aDocument nextPutAll: '"?>'