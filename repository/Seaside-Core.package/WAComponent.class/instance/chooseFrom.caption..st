convenience
chooseFrom: aCollection caption: aString
	"Choose an item from the given aCollection with caption aString. Answer the selected item."
	^ self call: ((WAChoiceDialog new options: aCollection)
		addMessage: aString;
		yourself)