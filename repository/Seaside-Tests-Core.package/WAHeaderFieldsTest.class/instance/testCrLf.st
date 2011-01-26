tests
testCrLf
	self
		should: [
			collection add: 'key' -> ('value', String crlf, 'Location: www.bad.com', String crlf, String crlf) ]
		raise: WAInvalidHeaderValueError.
	self
		should: [
			collection addAll: (Dictionary new
				add: ('key' -> ('value', String crlf, 'Location: www.bad.com', String crlf, String crlf));
				yourself) ]
		raise: WAInvalidHeaderValueError.
	self
		should: [
			collection at: 'key' append: 'value', String crlf, 'Location: www.bad.com', String crlf, String crlf ]
		raise: WAInvalidHeaderValueError.
	self
		should: [
			collection at: 'key' add: 'value', String crlf, 'Location: www.bad.com', String crlf, String crlf ]
		raise: WAInvalidHeaderValueError.
	self
		should: [
			collection at: 'key' put: 'value', String crlf, 'Location: www.bad.com', String crlf, String crlf ]
		raise: WAInvalidHeaderValueError
	