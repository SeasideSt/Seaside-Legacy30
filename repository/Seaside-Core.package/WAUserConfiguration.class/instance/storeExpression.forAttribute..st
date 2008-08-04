values
storeExpression: anAttributeExpression forAttribute: anAttribute
	^ expressions at: anAttribute key put: (anAttributeExpression configuration: self; yourself)