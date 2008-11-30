private
isImplemented: aMethodName
	"answer whether Seaside implements the given HTTP method name"
	^#('GET' 'POST') includes: aMethodName