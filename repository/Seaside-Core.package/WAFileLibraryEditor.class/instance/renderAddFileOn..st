rendering
renderAddFileOn: html
	html form multipart; with: [
		html text: 'Add File: '.
		html fileUpload on: #addFile of: self library.
		html space.
		html submitButton text: 'Add' ]