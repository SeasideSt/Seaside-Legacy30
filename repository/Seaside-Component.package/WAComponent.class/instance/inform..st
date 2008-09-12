convenience
inform: aString
	"Display a dialog with aString to the user until he clicks 'OK'"
	self call: (WAFormDialog new
		addMessage: aString;
		yourself)