deprecated
call: aString arguments: anArray
	"Call the method aString with aCollection as its arguments."

	self 
		seasideDeprecatedApi: 'JSObject>>call:arguments:'
		details: 'Use #call:withArguments: instead'.
	self call: aString withArguments: anArray