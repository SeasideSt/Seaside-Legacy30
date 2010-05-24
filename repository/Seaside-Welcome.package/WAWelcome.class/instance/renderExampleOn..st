rendering
renderExampleOn: html
	example notNil ifTrue: [
		html div
			class: #example;
			with: example ]