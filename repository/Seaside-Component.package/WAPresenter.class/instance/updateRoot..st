updating
updateRoot: aHtmlRoot
	"This method allows you customize the <head> section of an HTML document. The API is very similar to the 'Canvas API' for rendering in the <body> section (where you 'draw' in #renderContentOn:).

	anHtmlRoot is an instance of WAHtmlRoot

	Whenever you override this method don't forget to send super"
	super updateRoot: aHtmlRoot.

	self script isNil ifFalse: [ aHtmlRoot addScript: self script ].
	self style isNil ifFalse: [ aHtmlRoot addStyle: self style ]