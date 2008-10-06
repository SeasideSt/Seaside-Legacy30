testing
testCompileByteArray
	| library data file first second |
	library := WATestingFiles new.
	self deny: (library class selectors includes: #demoJpeg).
	data := (1 to: 255) asByteArray.
	file := WAFile new
		contentType: WAMimeType imageJpeg;
		contents: data;
		fileName: 'demo.jpeg';
		yourself.
	library addFile: file.
	self assert: (library class selectors includes: #demoJpeg).
	first := library perform: #demoJpeg.
	self assert: first = data.
	second := library perform: #demoJpeg.
	self assert: first == second.
	library removeFile: file fileName.
	self deny: (library class selectors includes: #demoJpeg)