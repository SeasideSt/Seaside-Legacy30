events
onResult: anObject
	"Handle the result of a search event. Is executed when the user selects a value or a programmatic search event is triggered."

	self action: 'result' arguments: (Array with: anObject asFunction)