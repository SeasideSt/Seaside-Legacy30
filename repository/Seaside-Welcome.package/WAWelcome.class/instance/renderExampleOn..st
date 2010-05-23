rendering
renderExampleOn: html
	example notNil ifTrue: [
		html div
			class: #example;
			with: [
				html render: example
				]
		]
