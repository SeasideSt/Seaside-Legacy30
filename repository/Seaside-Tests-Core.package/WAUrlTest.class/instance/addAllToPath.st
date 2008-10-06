testing-adding
addAllToPath
	url addAllToPath: #('files' 'WAStandardFiles' 'seaside.jpg' ).
	self assert: url path size = 3.
	self assert: url first = 'files'.
	self assert: url second = 'WAStandardFiles'.
	self assert: url third = 'seaside.jpg'.
	self assert: url seasideString = '/files/WAStandardFiles/seaside.jpg'