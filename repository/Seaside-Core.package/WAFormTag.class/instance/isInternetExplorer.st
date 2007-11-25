private
isInternetExplorer
	"tries to find out whether the current request is made by IE
	This is extremely unrelyable"
	| userAgent |
	userAgent := self session currentRequest userAgent.
	^(userAgent notNil
		and: [ (userAgent includesSubString: 'MSIE') ]
		"some Opera versions try to disguise them as IE")
		and: [ (userAgent includesSubString: 'Opera') not ]