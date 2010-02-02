convenience
sourceCallback: aOneArgumentBlock
	"A one argument block that will be evaluated with the term the user currently typed. The block is expected to answer a colleciton of strings."
	
	| term |
	self source: ((self jQuery getJson
		text: [ :stream | stream json: (aOneArgumentBlock value: term) ];
		callback: [ :value | term := value ] value: (JSStream on: 'request.term');
		onComplete: 'response(arguments[0])'; 
		dataType: 'jsonp') asFunction: #('request' 'response'))