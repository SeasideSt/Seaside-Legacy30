testing
testMimeType
	| library |
	library := WATestingFiles new.
	self assert: (library mimetypeForFile: 'main.js') = 'application/x-javascript' seasideMimeType.
	self assert: (library mimetypeForFile: 'style2.css') = WAMimeType textCss.
	self assert: (library mimetypeForFile: 'image.jpg') = WAMimeType imageJpeg.
	self assert: (library mimetypeForFile: 'index') = WAMimeType applicationOctetStream