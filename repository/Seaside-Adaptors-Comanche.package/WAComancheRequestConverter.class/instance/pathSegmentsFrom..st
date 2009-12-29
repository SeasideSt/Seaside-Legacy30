private
pathSegmentsFrom: aKomRequest
	"We need to use #rawUrl because Comanche has already unescaped #url without
	splitting on /. This means that we can't identify the difference between a real /
	and a %2f that might have been in the original URL."

	^ ((aKomRequest rawUrl copyUpTo: $?) subStrings: '/')
		collect:	[ :each | self codec url decode: (each unescapePercentsWithTextEncoding: nil) ]