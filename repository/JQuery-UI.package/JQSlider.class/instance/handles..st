options
handles: aObject
	"Specify boundaries for one or more handles. Format: <nowiki>[{start:Integer, min:Integer, max:Integer, id:String} [, ..]]</nowiki>. Only start is required. If the slider doesn't have handles already, they are automatically created."

	self optionAt: 'handles' put: aObject