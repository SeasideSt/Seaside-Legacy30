load scripts
addLoadScriptFirst: anObject
	| copy |
	copy := loadScripts species new: loadScripts size + 1.
	copy replaceFrom: 2 to: copy size with: loadScripts.
	copy at: 1 put: anObject.
	loadScripts := copy.
	^ anObject