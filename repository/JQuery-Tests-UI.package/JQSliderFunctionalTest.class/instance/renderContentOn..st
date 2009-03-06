rendering
renderContentOn: html
	html div script: (html jQuery new slider
		value: current;
		onChange: (html jQuery ajax
			callback: [ :value | current := value asNumber ]
			value: (html jQuery this slider value)))