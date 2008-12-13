options
isSupportedOption: aString
	^ self class = JQAjax or: [ #('url' 'dataType' 'complete') includes: aString ]