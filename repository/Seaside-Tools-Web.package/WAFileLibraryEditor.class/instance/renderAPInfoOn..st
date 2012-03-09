rendering
renderAPInfoOn: html
	| exampleFileLibraryClass introText|
	
	html paragraph: 'You can also upload files programatically:'.
	html blockquote: [
		html code: self library class greaseString, ' addAllFilesIn: ''/var/www/files/twitterbootstrap/css'''; break.
		html code: self library class greaseString, ' addAllFilesIn: ''/var/www/files/twitterbootstrap/js''' ].
	
	(self library isKindOf: WAFileMetadataLibrary) 
		ifTrue: [
			exampleFileLibraryClass := self library class greaseString.
			introText := 'Additionally as your file library is derived from ' ]
		ifFalse: [
			exampleFileLibraryClass := 'MYWAFileMetadataDerivedFileLibrary'.
			introText := 'Also if create a file library derived from ' ].
		
	html paragraph: [
		html text: introText; code: 'WAFileMetadataLibrary'; text: ' you can store files which include a path component, for example: ' ].

	html blockquote: [			
		html code: exampleFileLibraryClass, ' recursivelyAddAllFilesIn: ''/var/www/files/twitterbootstrap''' ].
	
	html paragraph: [
		html text: 'Now all the files in '; code: [ html text: '''/var/www/files/twitterbootstrap/'; strong: 'css'; text: '''' ]; text: 'and '; code: [ html text: '''/var/www/files/twitterbootstrap/'; strong: 'js'; text: '''' ];text: ' will include a the path component of either '; code: '''css/'''; text: ' or '; code: '''js/'''; text: ' in their url path.' ].
	
	
