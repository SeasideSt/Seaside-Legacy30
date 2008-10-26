registration
register: aComponentClass asApplicationAt: aString
	"Use this to programatically register a component as an application."
	"WARenderLoopConfiguration is added by default because most users will use WASession and the Render Loop."
	| application |
	application := self register: WAApplication at: aString.
	application configuration
		removeParent: WASessionConfiguration instance; "make the chain slightly cleaner"
		addParent: WARenderLoopConfiguration instance;
		addParent: self applicationDefaults.
	application preferenceAt: #rootClass put: aComponentClass.
	^ application