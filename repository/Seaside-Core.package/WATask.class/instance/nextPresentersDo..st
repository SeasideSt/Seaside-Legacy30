processing
nextPresentersDo: aBlock
	self activeComponent == self ifTrue: [
		[ self answer: self go ]
			on: WARenderNotification
			do: [ :err | ] ].
	super nextPresentersDo: aBlock