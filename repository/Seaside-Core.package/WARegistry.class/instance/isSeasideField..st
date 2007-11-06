private
isSeasideField: aString
	^ aString notEmpty
		and: [ aString first = $_ ]