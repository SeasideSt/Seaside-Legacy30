scripting
scriptSelected: aComponent on: aScript
	aScript scriptaculous element
		id: (self uid: 'head' at: (self
			findIndex: self selected
			ifAbsent: [ ]));
		removeClassName: 'active'.
	self selected: aComponent.
	aScript scriptaculous element
		id: (self uid: 'head' at: (self
			findIndex: self selected
			ifAbsent: [ ^ self ]));
		addClassName: 'active'.
	aScript scriptaculous element
		id: (self uid: 'body' at: 0);
		update: self selected