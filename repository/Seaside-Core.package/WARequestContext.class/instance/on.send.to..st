events
on: anEventClass send: aSelector to: anObject
	"Send the message aSelector to anObject, when an event of aClass is triggered."

	^ self on: anEventClass do: (MessageSend receiver: anObject selector: aSelector)