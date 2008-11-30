private
urlFrom: aSwazooRequest
	^((WAUrl absolute: aSwazooRequest uri printString)
		decodedWith: self codec) withoutParameters