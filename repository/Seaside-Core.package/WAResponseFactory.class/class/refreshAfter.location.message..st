as yet unclassified
refreshAfter: aNumber location: aUrlOrString message: aString
	^ WAResponse new
		refreshAfter: aNumber
			location: aUrlOrString
			message: aString, Character cr, 'You are being redirected to ', aUrlOrString seasideString;
		yourself.