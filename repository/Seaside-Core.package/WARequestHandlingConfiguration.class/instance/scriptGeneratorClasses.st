private
scriptGeneratorClasses
	^ WAScriptGenerator withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]