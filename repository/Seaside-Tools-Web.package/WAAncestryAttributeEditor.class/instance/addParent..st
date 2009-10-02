actions
addParent: aParent 
	aParent isNil
		ifFalse: [
			self configuration addParent: aParent.
			selectedConfig contents: aParent ]