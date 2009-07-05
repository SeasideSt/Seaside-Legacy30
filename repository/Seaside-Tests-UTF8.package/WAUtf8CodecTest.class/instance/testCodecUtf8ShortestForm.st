testing
testCodecUtf8ShortestForm
	"Non shortest form characters should be rejected
	See Corrigendum #1: UTF-8 Shortest Form http://www.unicode.org/versions/corrigendum1.html"
	| codec abc |
	codec := WACodec forEncoding: 'utf-8'.
	abc := self asString: #(16rC1 16r81 16rC1 16r82 16rC1 16r83).
	
	self assert: (codec decode: abc) ~= 'ABC'