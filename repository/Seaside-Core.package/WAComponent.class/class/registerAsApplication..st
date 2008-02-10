registration
registerAsApplication: aString
	"Use this to programatically register a component as an appliction."
	
	| application |
	application := WAApplication register: aString.
	application preferenceAt: #rootComponent put: self.
	^ application