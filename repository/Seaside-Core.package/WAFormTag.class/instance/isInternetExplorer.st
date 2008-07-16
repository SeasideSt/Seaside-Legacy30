private
isInternetExplorer
	"Tries to find out whether the current request is made by IE. This is extremely unrelyable."
	| userAgent |
	userAgent := self requestContext request userAgent.
	^ userAgent notNil and: 
		[ (userAgent includesSubString: 'MSIE') and: [ (userAgent includesSubString: 'Opera') not ] ]