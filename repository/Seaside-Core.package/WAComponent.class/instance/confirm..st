convenience
confirm: aString
	"Display a yes/no dialog with caption queryString. Answer true if the
	response is yes, false if no. This is a modal question -- the user must
	respond yes or no."

	^ self call: (WAYesOrNoDialog new
		addMessage: aString;
		yourself)