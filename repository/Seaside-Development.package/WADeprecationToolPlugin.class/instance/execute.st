actions
execute
	| result |
	result := self target confirm: [ :html |
		html heading: 'Reset deprecated warnings?'.
		html table: [
			html tableRow: [ html tableHeading: 'Deprecated'; tableHeading: 'Details' ].
			filter notifications do: [ :each |
				html tableRow: [
					html tableData: each messageText.
					html tableData: each details ] ] ] ].
	result ifTrue: [ filter reset ]