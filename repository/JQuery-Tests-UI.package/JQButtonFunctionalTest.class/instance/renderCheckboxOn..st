rendering
renderCheckboxOn: html
	html checkbox
		value: locked;
		callback: [ :value | locked := value ];
		onChange: (html jQuery ajax serializeForm);
		script: (html jQuery this button
			text: false;
			primaryIcon: 'ui-icon-unlocked';
			secondaryIcon: 'ui-icon-locked')