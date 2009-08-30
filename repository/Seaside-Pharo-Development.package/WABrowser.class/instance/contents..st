accessing
contents: aString
	"the browser sends CRLF as line ending but Squeak wants CR"
	contents := WAPlatform current convertToSmalltalkNewlines: aString