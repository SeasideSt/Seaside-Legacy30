convenience
request: aString
	"Display an input dialog whose question is queryString and answer the string the user accepts."
	^ self request: aString default: ''