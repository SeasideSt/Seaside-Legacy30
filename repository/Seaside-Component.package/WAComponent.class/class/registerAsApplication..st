registration
registerAsApplication: aString
	"Use this to programatically register a component as an appliction."
	
	| application |
	application := WAApplication register: aString.
	application preferenceAt: #rootClass put: self.
	^ application