options
isSupportedOption: aString
	^ self class = JQAjax or: [ #('url' 'dataType' 'success') includes: aString ]