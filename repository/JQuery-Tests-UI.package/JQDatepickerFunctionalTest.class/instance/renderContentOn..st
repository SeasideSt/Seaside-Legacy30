rendering
renderContentOn: html	
	html textInput
		script: html jQuery new datepicker;
		callback: [ :value | date := value asDate ];
		value: date mmddyyyy