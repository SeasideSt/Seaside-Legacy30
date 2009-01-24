dialogs
chooseFrom: aCollection caption: aString onAnswer: aBlock
	"Choose an item from the given aCollection with caption aString. Evaluate aBlock with the selected item."
	
	self 
		show: (WAChoiceDialog new
			addMessage: aString;
			options: aCollection;
			yourself)
		onAnswer: aBlock