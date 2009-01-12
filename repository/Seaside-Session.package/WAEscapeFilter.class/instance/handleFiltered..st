processing
handleFiltered: aRequestContext
	"Setup a return response escape handler. This is simply a marker in the execution stack."

	[ super handleFiltered: aRequestContext ]
		on: WAResponseNotification
		do: [ :err | ^ self ].
	self error: self printString , ' did not return a response.'