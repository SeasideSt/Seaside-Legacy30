values
takeValue: anObject forAttribute: anAttribute
	^ anObject isNil ifFalse: [
		self
			storeExpression:
				((WAValueExpression key: anAttribute key)
					configuration: self;
					value: anObject;
					yourself)
			forAttribute: anAttribute ]