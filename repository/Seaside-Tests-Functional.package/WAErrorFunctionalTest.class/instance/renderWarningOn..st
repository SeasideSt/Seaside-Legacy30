rendering
renderWarningOn: html 
	html heading: 'Warning'.
	html paragraph: 'In Pharo the warning test works the same as the resumable error test.'.
	html paragraph: 'In VisualWorks the warning test works the same as the halt test.'.
	html anchor
		callback: [ self raiseWarning ];
		with: 'Raise warning'