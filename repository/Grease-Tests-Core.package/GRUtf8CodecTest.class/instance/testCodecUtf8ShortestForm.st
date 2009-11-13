testing
testCodecUtf8ShortestForm
	"Non shortest form characters should be rejected
	See Corrigendum #1: UTF-8 Shortest Form http://www.unicode.org/versions/corrigendum1.html"
	| codec abc |
	codec := GRCodec forEncoding: 'utf-8'.
	abc := self asString: #(193 129 193 130 193 131 ).
	self assert: (codec decode: abc) ~= 'ABC'