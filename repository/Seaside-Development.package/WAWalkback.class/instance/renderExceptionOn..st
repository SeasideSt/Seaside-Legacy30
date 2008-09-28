rendering
renderExceptionOn: html
	| problems |
	problems := self exception possibleCauses.
	problems isEmpty ifTrue: [ ^ self ].
	html heading level: 3; with: 'Possible Causes'.
	html unorderedList list: problems