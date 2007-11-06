actions
execute
	| result |
	result := self requestor confirm: [ :html |
		html heading: 'Reset deprecated warnings?'.
		html unorderedList list: self requestor deprecated ].
	result ifTrue: [ self requestor clearDeprecated ]