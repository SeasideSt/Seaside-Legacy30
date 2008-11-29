accessing
tooltips
	| dict |
	dict := Dictionary new.
	dict at: #hello put: 'Hello world!'.
	dict at: #ok put: 'This is not the ok button!'.
	^dict