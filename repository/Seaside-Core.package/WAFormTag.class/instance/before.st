private
before
	defaultAction ifNil: [ ^ nil ].
	canvas div: [
		canvas submitButton
			callback: defaultAction;
			value: 'Default';
			style: 'position: absolute; top: -100em'.
		canvas textInput
			callback: [ :v | ];
			style: 'position: absolute; top: -100em' ]