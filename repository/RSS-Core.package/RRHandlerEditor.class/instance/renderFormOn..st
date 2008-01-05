rendering
renderFormOn: html
	html heading level1; with: 'Configuration'.
	html table: [
		html tableRow: [
			html tableHeading: 'Root Component'.
			html tableData: [
				html select
					list: self rootComponents;
					on: #rootComponentClass of: self handler ] ].
		html tableRow: [
			html tableHeading: 'Open Debugger on Errors'.
			html tableData: [
				html checkbox
					on: #openDebugger of: self handler ] ] ]