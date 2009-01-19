processing
respond: aBlock 
	| context |
	context := self requestContext.
	aBlock value: context response.
	context respond