accessing
url
	^ self optionAt: 'url' ifAbsentPut: [ WAUrl new ]