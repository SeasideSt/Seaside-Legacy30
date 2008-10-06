rendering
renderSubmitFormOn: html 
	html heading
		level3;
		with: 'Form with #submitFormNamed:'.
	html form
		id: 'submitForm';
		defaultAction: [ data := 'Default action : ' , data1 seasideString , ' ' , data2 seasideString , ' ' , numericData seasideString ];
		with: [
			html div: [
				html textInput on: #data1 of: self.
				html textInput on: #data2 of: self.
				html textInput on: #numericData of: self.
				html break.
				html text: data.
				html break.
				html anchor
					callback: [ data := 'Anchor action : ', data1 seasideString, ' ', data2 seasideString, ' ', numericData seasideString ];
					submitFormNamed: 'submitForm';
					with: 'Click to submit' ] ]