initialization
pushRequestHandler: aRequestHandler while: aBlock 
	handlers addFirst: aRequestHandler.
	^ aBlock ensure: [ handlers removeFirst ]