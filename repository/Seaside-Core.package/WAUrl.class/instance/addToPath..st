adding
addToPath: aString
	"Adds the argument as a path element. If the argument contains $/ it is split into multiple elements."

	"#subStrings: can be slow on Pharo because it uses a lot of allocation so we avoid it
	see issue Issue 609"
	| startIndex p endIndex stringSize |
	startIndex := aString indexOf: $/.
	startIndex = 0
		ifTrue: [
			aString isEmpty ifFalse: [
				self path add: aString ] ]
		ifFalse: [
			p := self path.
			stringSize := aString size.
			startIndex = 1 ifFalse: [
				"case where we have a path not starting with $/"
				p add: (aString copyFrom: 1 to: startIndex - 1) ].
			endIndex := aString indexOf: $/ startingAt: startIndex + 1.
			[ startIndex ~= 0 ] whileTrue: [
				startIndex + 1 = endIndex
					ifTrue: [
						"skip, avoid adding empty strings"
						startIndex := endIndex.
						endIndex := aString indexOf: $/ startingAt: startIndex + 1]
					ifFalse: [
						endIndex = 0
							ifTrue: [
								startIndex < stringSize ifTrue: [
									"avoid adding empty path if aString ends with $/"
									p add: (aString copyFrom: startIndex + 1 to: stringSize) ].
								startIndex := 0 ]
							ifFalse: [
								p add: (aString copyFrom: startIndex + 1 to: endIndex  - 1).
								startIndex := endIndex.
								endIndex := aString indexOf: $/ startingAt: startIndex + 1 ] ] ] ].
	self slash: (aString notEmpty and: [ aString last = $/ ])