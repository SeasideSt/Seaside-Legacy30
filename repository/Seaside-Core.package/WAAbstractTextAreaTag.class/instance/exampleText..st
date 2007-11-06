javascript
exampleText: aString
	(self value isEmptyOrNil or: [ self value = aString ]) ifFalse: [ ^ self ].
	self onFocus: 'if(value==' , aString printString , '){value='''';style.color=null}'.
	self style: 'color: #aaa'; value: aString