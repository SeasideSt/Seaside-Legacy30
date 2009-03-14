rendering
renderContentOn: html
	self renderHeadingsOn: html.
	self renderAddFileOn: html.
	self renderFilesOn: html.
	self renderWriteToDiskOn: html.
	self renderDoneOn: html