rendering-rows
renderRowName: aHandler named: aString on: html
	html anchor
		class: 'selected' if: aHandler = selection;
		callback: [ self configure: aHandler ];
		with: [
			aHandler isDispatcher
				ifTrue: [	 html  text: aString , '/' ]
				ifFalse: [
					html text: aString.
					self defaultDispatcher defaultHandler == aHandler
							ifTrue: [ html span
										title: 'Default application';
										with: ' (*)'] ] ]