rendering-rows
renderRowName: anEntryPoint named: aString on: html
	html anchor
		class: 'selected' if: anEntryPoint = selection;
		callback: [ self configure: anEntryPoint ];
		with: [
			anEntryPoint isDispatcher
				ifTrue: [	 html  text: aString , '/' ]
				ifFalse: [
					html text: aString.
					(WAUrl absolute: self defaultDispatcher defaultName) = anEntryPoint url
						 ifTrue: [ html span
									title: 'Default application';
									with: ' (*)'] ] ]