tools
methodsOf: aString 
	"Lists all the methods with author initials aString."
	"self methodsOf: 'avi'"
	
	| methods |
	methods := self allPackages gather: [ :package | 
		(PackageInfo named: package name) methods
			select: [ :method | method timeStamp beginsWith: aString ] ].
	MessageSet 
		openMessageList: methods
		name: methods size greaseString , ' methods of ' , aString