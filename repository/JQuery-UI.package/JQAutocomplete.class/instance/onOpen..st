events-generated
onOpen: anObject
	"After a request with the data ready, before it is actually displayed; also indicates the suggestion menu will be opened."

	self optionAt: 'open' put: anObject asFunction