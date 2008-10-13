*javascript-core
javascriptOn: aStream
	aStream nextPutAll: 'new Date('.
	#( year javascriptMonthIndex dayOfMonth hour minute second )
		do: [ :each | aStream print: (self perform: each) ]
		separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $)