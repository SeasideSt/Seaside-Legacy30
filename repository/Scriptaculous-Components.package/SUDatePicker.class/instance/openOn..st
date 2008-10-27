scripting
openOn: aScript 
	| anElement |
	anElement := aScript element id: containerId.
	anElement	
		absolutize;
		styleAt: 'left'
			put: origin x asString , 'px';
		styleAt: 'top'
			put: origin y asString , 'px'.
	self isOpen
		ifFalse: [
			anElement update: self.
			open := true]