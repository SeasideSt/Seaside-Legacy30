events
onFormatMatch: anObject
	"Use this option if you want to limit the data that autocomplete searches for matches. For example, there may be items you want displayed to the user, but don't want included in the data that's searched. Gets called with the same arguments as formatItem."

	self optionAt: 'formatMatch' put: anObject asFunction