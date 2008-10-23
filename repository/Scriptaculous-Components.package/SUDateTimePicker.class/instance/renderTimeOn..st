rendering
renderTimeOn: html
	html tableRow: [
		html tableData
			class: 'time';
			colSpan: 9;
			align: 'center';
			with: [
				html form 
					id: self timeId;
					with: [
						html textInput
							style: 'width:18px';
							maxLength: 2;
							value: (self withLeadingZero: hours);
							callback: [:v | self hours: v].
						html text: ':'.
						html textInput
							style: 'width:18px';
							maxLength: 2;
							value: (self withLeadingZero: minutes);
							callback: [:v | self minutes: v].
						showSeconds ifTrue: [
							html text: ':'.
							html textInput
								style: 'width:18px';
								maxLength: 2;
								value: (self withLeadingZero: seconds);
								callback: [:v | self seconds: v] ].
						html space.
						html anchor
							onClick: (self ajaxCallbackFor: self date on: html);
							with: 'Ok' ] ] ]