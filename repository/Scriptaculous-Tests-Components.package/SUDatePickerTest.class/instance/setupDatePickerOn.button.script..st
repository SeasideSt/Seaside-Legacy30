rendering
setupDatePickerOn: theId button: buttonId script: script
	component ifNil: [component := SUDatePicker on: theId button: buttonId].
	script element id: buttonId; styleAt: 'display' put: 'none'; insertAfter: component