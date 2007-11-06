actions
click: aPoint
	| event |
	event := Sensor createMouseEvent.
	event at: 3 put: aPoint x.
	event at: 4 put: aPoint y.
	event at: 5 put: self buttonCode.
	Sensor processEvent: event.
	event at: 5 put: 0.
	Sensor processEvent: event.
	button := #red