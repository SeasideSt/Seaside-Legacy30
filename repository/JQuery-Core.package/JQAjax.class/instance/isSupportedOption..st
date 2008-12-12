options
isSupportedOption: aString
	^ self class = JQAjax or: [ #('dataType' 'complete') includes: aString ]