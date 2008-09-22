rendering
renderContentOn: html
	html form: [
		html table: [
			html tableRow: [
				html tableHeading: [ html label: 'required' ].
				html tableData: [ html textInput required ] ].
			html tableRow: [
				html tableHeading: [ html label: 'autofocus' ].
				html tableData: [ html textInput autofocus ] ].
			html tableRow: [
				html tableHeading: [ html label: 'pattern ([0-9][A-Z]{3})' ].
				html tableData: [ html textInput pattern: '[0-9][A-Z]{3}' ] ].
			html tableRow: [
				html tableHeading: [ html label: 'search' ].
				html tableData: [ html searchInput
					autosave: 'Seaside';
					placeholder: 'placeholder ...';
					results: 5;
					incremental: false ] ].
			html tableRow: [
				html tableHeading: [ html label: 'range (6..12) by 2' ].
				html tableData: [ html rangeInput
					min: 6;
					max: 12;
					step: 2 ] ].
			html tableRow: [
				html tableHeading: [ html label: 'email' ].
				html tableData: [ html emailInput ] ].
			html tableRow: [
				html tableHeading: [ html label: 'url' ].
				html tableData: [ html urlInput] ].
			html tableRow: [
				html tableHeading: [ html label: 'number' ].
				html tableData: [ html numberInput ] ].
			html tableRow: [
				html tableHeading: [ html label: 'datetimelocal' ].
				html tableData: [ html dateTimeLocalInput ] ].
			html tableRow: [
				html tableHeading: [ html label: 'datetime' ].
				html tableData: [ html dateTimeInput ] ].
			html tableRow: [
				html tableHeading: [ html label: 'date' ].
				html tableData: [ html dateInput5 ] ].
			html tableRow: [
				html tableHeading: [ html label: 'time' ].
				html tableData: [ html timeInput5 ] ].
			html tableRow: [
				html tableHeading: [ html label: 'month' ].
				html tableData: [ html monthInput step: 3 ] ].
			html tableRow: [
				html tableHeading: [ html label: 'week' ].
				html tableData: [ html weekInput ] ].
			html tableRow: [
				html tableHeading: [ html label: 'datalist' ].
				html tableData: [ 
					html datalist: [
						html option: 'HTML'.
						html option disabled: true; with: 'XHTML' ] ] ] ].
		html submitButton ]