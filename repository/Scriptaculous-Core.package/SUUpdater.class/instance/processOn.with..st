processing
processOn: aStream with: argumentString
	callback ifNotNil: [
		self
			render:
				[:html |
				(callback numArgs = 2)
					ifTrue: [callback evaluateWithArguments: (Array with: html with: argumentString)]
					ifFalse: [callback value: html]]
			on: aStream]