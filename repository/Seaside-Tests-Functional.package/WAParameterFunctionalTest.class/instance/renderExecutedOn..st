rendering
renderExecutedOn: html
	html strong: (self wasSuccessFull ifTrue: [ 'success' ] ifFalse: [ 'fail' ])