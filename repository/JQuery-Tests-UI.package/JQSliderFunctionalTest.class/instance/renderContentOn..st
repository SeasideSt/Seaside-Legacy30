rendering
renderContentOn: html
	html div script: (html jQuery new slider
		startValue: current;
		onChange: (html jQuery ajax
			callback: [ :value | current := value asNumber ]
			value: (html jQuery this slider value)))