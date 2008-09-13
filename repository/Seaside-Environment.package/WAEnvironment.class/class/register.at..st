registration
register: aComponent at: aString
	"Use this to programatically register a component as an application."
	"WARenderLoopConfiguration is added by default because most users will use WASession and the Render Loop."
	| application |
	application := WAApplication register: aString.
	application configuration
		removeParent: WASessionConfiguration instance; "make the chain slightly cleaner"
		addParent: WARenderLoopConfiguration instance.
	application
		preferenceAt: #rootClass put: aComponent.
	^ application