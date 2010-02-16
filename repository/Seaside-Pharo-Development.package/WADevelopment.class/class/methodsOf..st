tools
methodsOf: aString 
	"Lists all the methods with author initials aString."
	
	| methods |
	methods := self packages gather: 
		[ :package | 
		package methods select: [ :method | method timeStamp beginsWith: aString ] ].
	MessageSet 
		openMessageList: methods
		name: methods size greaseString , ' methods of ' , aString