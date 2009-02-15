private
urlFor: aSwazooRequest
	^ ((WAUrl absolute: aSwazooRequest uri printString)
		decodedWith: self codec) withoutParameters