events-generated
onChange: anObject
	"After an item was selected; ui.item refers to the selected item. Always triggered after the close event."

	self optionAt: 'change' put: anObject asFunction