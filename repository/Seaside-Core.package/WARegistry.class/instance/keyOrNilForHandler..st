private
keyOrNilForHandler: anObject
	^ self mutex critical: [ keysByHandler at: anObject ifAbsent: [ nil ] ]