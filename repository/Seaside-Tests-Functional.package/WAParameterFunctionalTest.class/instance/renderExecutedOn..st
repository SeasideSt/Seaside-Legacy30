rendering
renderExecutedOn: html
	html strong: (self wasSuccessfull ifTrue: [ 'success' ] ifFalse: [ 'fail' ])