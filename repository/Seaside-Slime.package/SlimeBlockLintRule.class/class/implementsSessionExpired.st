bugs
implementsSessionExpired
	^ self new
		name: 'Implements #expired in a session class';
		rationale: 'The message #expired has been replaced by #unregistered';
		methodBlock: [ :context :result |
			| class selectors |
			class := context selectedClass.
			((class inheritsFrom: WASession)
				and: [ class includesSelector: #expired ])
					ifTrue: [ result addClass: class selector: context selector ] ]