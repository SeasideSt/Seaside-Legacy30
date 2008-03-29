events
on: aClass send: aSelector to: anObject
	"Send the message aSelector to anObject, when an event of aClass is triggered."

	^ self on: aClass do: [ :ann | anObject perform: aSelector with: anObject ]