rendering
renderFilesOn: html
	html table: [
		self library filenames asSortedCollection do: [ :each |
			html tableRow: [
				renamingFile = each
					ifTrue: [ self renderRenameFormForFile: each on: html ]
					ifFalse: [ self renderFile: each on: html ] ] ] ]