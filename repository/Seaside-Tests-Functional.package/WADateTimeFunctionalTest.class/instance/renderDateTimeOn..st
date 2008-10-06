rendering
renderDateTimeOn: html 
	html heading
		level3;
		with: 'Form with #dateInput and #timeInput'.
	html form
		defaultAction: [ message := 'Default action: ' , date seasideString, ' ', time seasideString ];
		with:  [
			html div: [
				html dateInput on: #date of: self.
				html space: 10.
				html timeInput
					withSeconds;
					on: #time of: self.
				html break.
				html text: message.
				html break.
				html submitButton
					callback: [ message := 'Button action: ', date seasideString , ' ', time seasideString ] ] ]