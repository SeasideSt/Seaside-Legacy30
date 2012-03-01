*grease-pharo-core
greaseString
	"Reimplemented because in Pharo 1.4
	(4 @ 2) greaseString
	ansers  '(4@2)'"
	^ String streamContents: [ :stream |
		x printOn: aStream.
		aStream nextPut: $@.
		(y notNil and: [y negative])
			ifTrue: [
				"Avoid ambiguous @- construct"
				aStream space].
		y printOn: aStream ]