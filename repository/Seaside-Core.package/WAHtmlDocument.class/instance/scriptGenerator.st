accessing
scriptGenerator
	^ scriptGenerator ifNil: [ scriptGenerator := WAScriptGenerator new ]